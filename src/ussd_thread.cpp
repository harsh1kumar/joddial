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

#include "ussd_thread.h"

#include <QtDBus>

const QString UssdThread::service = "org.freedesktop.ModemManager1";
const QString UssdThread::modemInterface = "org.freedesktop.ModemManager1.Modem";
const QString UssdThread::ussdInterface = "org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd";

UssdThread::UssdThread()
{
}

/*
 * Find the DBus path of the modem & set UssdThread::path to it.
 *
 * 	A call to GetManagedObjects method of org.freedesktop.DBus.ObjectManager
 * 	interface will give the path in the output
 */
void UssdThread::setModemPath()
{
	QDBusInterface busInterface(service,
				"/org/freedesktop/ModemManager1",
				"org.freedesktop.DBus.ObjectManager",
				QDBusConnection::systemBus());

	QDBusMessage outArgs = busInterface.call("GetManagedObjects");

	/* Get the arguments in a list of QVariants */
	QList<QVariant> outArgsList = outArgs.arguments();

	/* First item in the list has relevant information.
	 * It is of the type QDBusArgument */
	QVariant firstArg = outArgsList.at(0);
	const QDBusArgument &dbusArgs = firstArg.value<QDBusArgument>();

	/* dbusArgs is of type QDBusArgument::MapType, so reading the map
	 * The map has the path as a QVariant */
	QVariant vPath;
	dbusArgs.beginMap();
	while (!dbusArgs.atEnd())
	{
		dbusArgs >> vPath;
	}
	dbusArgs.endMap();
	QDBusObjectPath obPath = vPath.value<QDBusObjectPath>();

	/* Getting the path as a QString */
	path = obPath.path();
}

/*
 * Reimplementation of QThread run() function
 */
void UssdThread::run()
{
	if (!QDBusConnection::systemBus().isConnected())
	{
		reply = tr("Error: Cannot connect to the D-Bus system bus.");
		return;
	}

	setModemPath();

	QDBusInterface busInterface(service, path, modemInterface,
				    QDBusConnection::systemBus());
	if (!busInterface.isValid())
	{
		reply = tr("Error while sending USSD command: "
			"Maybe the modem is not connected. "
			"Please connect the modem & try again");
		return;
	}

	/* Enabling modem: Network-related operations are available now*/
	busInterface.call("Enable", true);

	ussdCall();

	/* Disabling modem: Network-related operations are unavailable now*/
	busInterface.call("Enable", false);
}

/*
 * Actual function to issue DBus call for USSD command
 */
void UssdThread::ussdCall()
{
	QDBusInterface busInterface(service, path, ussdInterface,
				    QDBusConnection::systemBus());

	if (!busInterface.isValid())
	{
		reply = tr("Error while sending USSD command: "
			"Maybe the modem is not connected. "
			"Please connect the modem & try again");
		return;
	}

	/* Calling the DBus ussd method with command */
	QDBusReply<QString> dbusReply = busInterface.call("Initiate", command);
	if (!dbusReply.isValid())
		reply = tr("Send Failed: ") + dbusReply.error().message();
	else
		reply = dbusReply.value();
}
