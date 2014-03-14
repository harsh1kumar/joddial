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

#ifndef JODODIAL_H
#define JODODIAL_H

#include <QWidget>
#include <QPushButton>
#include <QPlainTextEdit>
#include <QComboBox>
#include <QLineEdit>
#include <QProcess>
#include <QMenu>
#include <QSystemTrayIcon>

// #include "ussd_thread.h"
#include "ussd_handler.h"

class Jododial : public QWidget
{
	Q_OBJECT

public:
	Jododial(QWidget * parent=0);

private slots:
	void connectDisconnect();
	void sendUssd();
	void printOutput() const;
	void saveAndQuit() const;
	void trayIconActivated(QSystemTrayIcon::ActivationReason reason);
	void toggleConnectButton() const;
	void displayUssdReply();

private:
	/* Widgets */
	QPlainTextEdit * outputText;
	QComboBox * networkCombo;
	QPushButton * connectButton;
	QPushButton * sendUssdButton;
	QLineEdit * ussdCmdEdit;

	/* wvdial Process */
	QProcess * wvdialProc;

	/* System Tray Icon */
	QSystemTrayIcon * sysTrayIcon;
	QMenu * sysTrayMenu;
	QAction * restoreAct;
	QAction * quitAct;

	/* Private Functions */
	void createSysTrayIcon();
	void closeEvent(QCloseEvent *event);
	void readSettings();
	void writeSettings() const;
	void findNetworks();

	/* Private variables*/
	bool showMsgOnHide;
	UssdThread * uthread;
};

#endif // JODODIAL_H
