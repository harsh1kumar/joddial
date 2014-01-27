/*
 * Copyright (C) 2014 Harsh Kumar <harsh1kumar@gmail.com>
 *
 * This file is part of Joddial.
 *
 * Joddial is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Joddial is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Joddial.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "joddial.h"

#include <QLabel>
#include <QVBoxLayout>
#include <QDebug>
#include <QMessageBox>
#include <QApplication>

Joddial::Joddial(QWidget * parent):
		QWidget(parent)
{
	QLabel * titleLabel = new QLabel(tr("Joddial"));
	QString fontFamily = (this->font()).family();
	titleLabel->setFont(QFont(fontFamily, 16, QFont::Bold));

	outputText = new QPlainTextEdit("");

	networkCombo = new QComboBox;
	networkCombo->setEditable(true);

	connectButton = new QPushButton(tr("&Connect"));

	/* Set layout */
	QVBoxLayout * mainLayout = new QVBoxLayout;
	mainLayout->addWidget(titleLabel);
	mainLayout->addWidget(outputText);
	mainLayout->addWidget(networkCombo);
	mainLayout->addWidget(connectButton);

	createSysTrayIcon();

	wvdialProc = new QProcess(this);

	connect(connectButton, SIGNAL(clicked()), this, SLOT(connectDisconnect()));
	connect(wvdialProc, SIGNAL(readyReadStandardOutput()), this, SLOT(printOutput()));

	setLayout(mainLayout);
	setWindowTitle(tr("Joddial"));

	/* Initial location & size*/
	resize(QSize(400,200));
	move(QPoint(400,200));
}

/*
 * Connect to network by starting wvdial process if process not running already
 * Disconnect the process if it is already running
 */
void Joddial::connectDisconnect()
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
			qDebug() << "Connection attempted";
			connectButton->setText(tr("&Disconnect"));
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
		qDebug() << "Disconnection attempted";
		connectButton->setText(tr("&Connect"));
	}
}

/*
 * Print output in text box
 */
void Joddial::printOutput()
{
	QString output = wvdialProc->readAll();
	outputText->appendPlainText(output);
}

/*
 * Creates System Tray Icon with associated actions & menu
 */
void Joddial::createSysTrayIcon()
{
	/* Create Actions for System Tray Icon Menu */
	restoreAct = new QAction(tr("&Restore"), this);
	connect(restoreAct, SIGNAL(triggered()), this, SLOT(showNormal()));

	quitAct = new QAction(tr("&Quit"), this);
	connect(quitAct, SIGNAL(triggered()), qApp, SLOT(quit()));

	/* Create System Tray Icon Menu */
	sysTrayMenu = new QMenu(this);
	sysTrayMenu->addAction(restoreAct);
	sysTrayMenu->addAction(quitAct);

	/* Create System Tray Icon*/
	sysTrayIcon = new QSystemTrayIcon(this);
	sysTrayIcon->setIcon(this->windowIcon()); /* Use the icon of parent */
	sysTrayIcon->setContextMenu(sysTrayMenu);
	sysTrayIcon->show();
}
/*
 * Reimplemented Event Handler for Joddial's close event
 *
 * It hides the Joddial widget & ignores the close event, so that
 * it seems that Joddial has minimized to system tray
 */
void Joddial::closeEvent(QCloseEvent *event)
{
	QMessageBox::information(this, tr("Joddial"),
				tr("<center>Joddial is still running.<br>"
				"To quit, right-click on system tray icon "
				"& choose <b>Quit</b></center>"));

	hide(); /* Hide Joddial Widget*/
	event->ignore(); /* Ignore the close event */
}
