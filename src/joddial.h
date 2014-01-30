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

#ifndef JODDIAL_H
#define JODDIAL_H

#include <QWidget>
#include <QPushButton>
#include <QPlainTextEdit>
#include <QProcess>
#include <QComboBox>
#include <QMenu>
#include <QSystemTrayIcon>

class Joddial : public QWidget
{
	Q_OBJECT

public:
	Joddial(QWidget * parent=0);

private slots:
	void connectDisconnect();
	void printOutput();
	void saveAndQuit();
	void trayIconActivated(QSystemTrayIcon::ActivationReason reason);

private:
	/* Widgets */
	QPlainTextEdit * outputText;
	QComboBox * networkCombo;
	QPushButton * connectButton;

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
	void writeSettings();
};

#endif // JODDIAL_H
