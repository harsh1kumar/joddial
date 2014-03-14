/*
 * Copyright (C) 2014 Harsh Kumar <harsh1kumar@gmail.com>
 *
 * This file is part of Jododial.
 *
 * Jododial is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Jododial is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Jododial.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "jododial.h"

#include <QLabel>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QMessageBox>
#include <QApplication>
#include <QSettings>
#include <QCheckBox>
#include <QTextStream>

Jododial::Jododial(QWidget * parent):
		QWidget(parent)
{
	QLabel * titleLabel = new QLabel(tr("Jododial"));
	QString fontFamily = (this->font()).family();
	titleLabel->setFont(QFont(fontFamily, 16, QFont::Bold));

	outputText = new QPlainTextEdit("");
	outputText->setReadOnly(true);

	/* Network row widgets */
	QLabel * networkLabel = new QLabel(tr("Network Name :"));
	networkLabel->setAlignment(Qt::AlignCenter);
	networkCombo = new QComboBox;
	networkCombo->setEditable(true);
	connectButton = new QPushButton(tr("&Connect"));
	QHBoxLayout * networkLayout = new QHBoxLayout;
	networkLayout->addWidget(networkLabel, 1);
	networkLayout->addWidget(networkCombo, 1);
	networkLayout->addWidget(connectButton, 1);

	/* USSD row widgets */
	QLabel * ussdCmdLabel = new QLabel(tr("USSD Command :"));
	ussdCmdLabel->setAlignment(Qt::AlignCenter);
	ussdCmdEdit = new QLineEdit;
	sendUssdButton = new QPushButton(tr("&Send"));
	QHBoxLayout * ussdLayout = new QHBoxLayout;
	ussdLayout->addWidget(ussdCmdLabel, 1);
	ussdLayout->addWidget(ussdCmdEdit, 1);
	ussdLayout->addWidget(sendUssdButton, 1);

	wvdialProc = new QProcess(this);
	uthread = new UssdThread;

	/* Set layout */
	QVBoxLayout * mainLayout = new QVBoxLayout;
	mainLayout->addWidget(titleLabel);
	mainLayout->addWidget(outputText);
	mainLayout->addLayout(networkLayout);
	mainLayout->addLayout(ussdLayout);
	setLayout(mainLayout);

	createSysTrayIcon();
	findNetworks();

	setWindowTitle(tr("Jododial"));

	readSettings();

	connect(connectButton, SIGNAL(clicked()), this, SLOT(connectDisconnect()));
	connect(sendUssdButton, SIGNAL(clicked()), this, SLOT(sendUssd()));
	connect(wvdialProc, SIGNAL(readyReadStandardOutput()), this, SLOT(printOutput()));
	connect(wvdialProc, SIGNAL(started()), this, SLOT(toggleConnectButton()));
	connect(wvdialProc, SIGNAL(finished(int, QProcess::ExitStatus)), this, SLOT(toggleConnectButton()));
	connect(uthread, SIGNAL(finished()), this, SLOT(displayUssdReply()));
}

/*
 * Creates System Tray Icon with associated actions & menu
 */
void Jododial::createSysTrayIcon()
{
	/* Create Actions for System Tray Icon Menu */
	restoreAct = new QAction(tr("&Restore"), this);
	connect(restoreAct, SIGNAL(triggered()), this, SLOT(show()));

	quitAct = new QAction(tr("&Quit"), this);
	connect(quitAct, SIGNAL(triggered()), this, SLOT(saveAndQuit()));

	/* Create System Tray Icon Menu */
	sysTrayMenu = new QMenu(this);
	sysTrayMenu->addAction(restoreAct);
	sysTrayMenu->addAction(quitAct);

	/* Create System Tray Icon*/
	sysTrayIcon = new QSystemTrayIcon(this);
	sysTrayIcon->setIcon(this->windowIcon()); /* Use the icon of parent */
	sysTrayIcon->setContextMenu(sysTrayMenu);
	sysTrayIcon->show();

	connect(sysTrayIcon, SIGNAL(activated(QSystemTrayIcon::ActivationReason)), 
		this, SLOT(trayIconActivated(QSystemTrayIcon::ActivationReason)));
}

/*
 * Find the networks which have been configured in wvdial.conf &
 * put them in the combo box
 */
void Jododial::findNetworks()
{
	QFile configFile("/etc/wvdial.conf");
	if (!configFile.open(QIODevice::ReadOnly | QIODevice::Text))
	{
		QMessageBox::warning(this, "Warning",
				"<center>Unable to open \"/etc/wvdial.conf\" for reading.<br>"
				"Combo Box will be empty</center>");
		return;
	}

	QTextStream in(&configFile);
	QString line = in.readLine();
	while (!line.isNull())
	{
		line = line.trimmed(); // Remove any leading or trailing white spaces
		if (!line.startsWith(";"))
		{
			// Line is not commented
			if (line.contains("Dialer") && line.startsWith("[") && line.endsWith("]"))
			{
				// A line with network name found
				line.remove("Dialer");
				line.remove(0,1); // Remove leading '['
				line.chop(1); // Remove trailing ']'
				line = line.trimmed(); // Remove any leading or trailing white spaces

				// 'line' now has a network name
				// Insert the network name in the Combo Box
				networkCombo->insertItem(0, line);
			}
		}
		// Read next line
		line = in.readLine();
	}
	configFile.close();
}

/*
 * Reimplemented Event Handler for Jododial's close event
 *
 * It hides the Jododial widget & ignores the close event, so that
 * it seems that Jododial has minimized to system tray
 */
void Jododial::closeEvent(QCloseEvent *event)
{
	if (showMsgOnHide)
	{
		QMessageBox msgBox;
		msgBox.setIcon(QMessageBox::Information);
		msgBox.setText(tr("Jododial is still running."));
		msgBox.setInformativeText(tr("To quit, right-click on system tray icon "
					"& choose <b>Quit</b>"));
		msgBox.setWindowTitle("Jododial");

		QCheckBox * chkBox = new QCheckBox("Do not show this again");
		msgBox.setCheckBox(chkBox);
		msgBox.exec();

		if (chkBox->checkState() == Qt::Checked)
			showMsgOnHide = false;
	}

	hide(); /* Hide Jododial Widget*/
	event->ignore(); /* Ignore the close event */
}

/*
 * Write settings & quit Jododial
 */
void Jododial::saveAndQuit() const
{
	writeSettings();
	qApp->quit();
}

/*
 * Connect to network by starting wvdial process if process not running already
 * Disconnect the process if it is already running
 */
void Jododial::connectDisconnect()
{
	if (wvdialProc->state() == QProcess::NotRunning)
	{
		/* Connect */
		QString prog = "wvdial";
		QStringList args;
		args << networkCombo->currentText();

		/* Check to make sure combo box entry is not empty */
		if (!args.at(0).isEmpty())
		{
			/* Connect to the network */
			/* Merging stdout & stderr into a single channel */
			wvdialProc->setProcessChannelMode(QProcess::MergedChannels);
			wvdialProc->start(prog, args);
		}
		else
		{
			QMessageBox::information(this, tr("No Network"), tr("Please enter a network name in the combo box."));
		}
		
	}
	else
	{
		/* Disconnect */
		wvdialProc->terminate();

		/* Disable the button till the process actually ends. The button
		 * will be enabled by a slot when finished() signal is emitted */
		connectButton->setEnabled(false);
	}
}

/*
 * Print output in text box
 */
void Jododial::printOutput() const
{
	QString output = wvdialProc->readAll();
	outputText->appendPlainText(output);
}

/*
 * Toggles the name of connect button depending on the wvdialProc state
 */
void Jododial::toggleConnectButton() const
{
	if (wvdialProc->state() == QProcess::Running)
		connectButton->setText(tr("&Disconnect"));
	else
	{
		connectButton->setText(tr("&Connect"));
		connectButton->setEnabled(true);
		outputText->appendPlainText("\n************ " + tr("Disconnected") + " ************\n\n");
	}
}

/*
 * Behaviour of tray icon when it is clicked or double-clicked
 * 	If Jododial is visible, hide it
 * 	If Jododial is hidden, show it.
 */
void Jododial::trayIconActivated(QSystemTrayIcon::ActivationReason reason)
{
	if (reason == QSystemTrayIcon::Trigger || reason == QSystemTrayIcon::DoubleClick)
	{
		if (this->isVisible())
			hide();
		else
			show();
	}
}

/*
 * Read settings from config file or load default value.
 * Settings read are:
 * 	Size
 * 	Point/Position
 * 	showMsgOnHide - Show messageBox when minimizing to system tray or not
 * 	network - Current network in combo box
 * 	ussdCommand - Current command in ussdCmdEdit
 */
void Jododial::readSettings()
{
	QSettings settings("jododial", "jododial");

	QSize size = settings.value("size", QSize(400,250)).toSize();
	QPoint pos = settings.value("pos", QPoint(400,200)).toPoint();
	resize(size);
	move(pos);

	showMsgOnHide = settings.value("showMsgOnHide", true).toBool(); //By default, message box will be displayed

	// Try to set network in combo box to the saved value
	QString network = settings.value("network", "").toString();
	int index = networkCombo->findText(network);
	if (index != -1)
	{
		// Network available in combo box
		networkCombo->setCurrentIndex(index);
	}

	QString ussdCommand = settings.value("ussdCommand", "").toString();
	ussdCmdEdit->setText(ussdCommand);
}

/*
 * Write settings to config file
 */
void Jododial::writeSettings() const
{
	QSettings settings("jododial", "jododial");
	settings.setValue("size", size());
	settings.setValue("pos", pos());
	settings.setValue("showMsgOnHide", showMsgOnHide);
	settings.setValue("network", networkCombo->currentText());
	settings.setValue("ussdCommand", ussdCmdEdit->text());
}

/*
 * Send USSD command
 * 	USSD thread will start
 * 	sendUssdButton is disabled. It will be re-enabled when the thread finishes
 */
void Jododial::sendUssd()
{
	/* Read Command from line edit & start the ussd thread */
	uthread->command = ussdCmdEdit->text();
	uthread->start();

	sendUssdButton->setText(tr("&Sending..."));
	sendUssdButton->setEnabled(false);
}

/*
 * Displays the reply available after USSD thread finishes
 * sendUssdButton will be enabled
 */
void Jododial::displayUssdReply()
{
	outputText->appendPlainText(uthread->reply + "\n");
	sendUssdButton->setText(tr("&Send"));
	sendUssdButton->setEnabled(true);
}
