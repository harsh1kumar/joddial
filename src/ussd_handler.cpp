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

#include "ussd_handler.h"

#include <QtDBus>

const QString UssdHandler::service = "org.freedesktop.ModemManager1";
const QString UssdHandler::modemInterface = "org.freedesktop.ModemManager1.Modem";
const QString UssdHandler::ussdInterface = "org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd";

UssdHandler::UssdHandler()
{
}

/*
 * Find the DBus path of the modem & set UssdHandler::path to it.
 *
 * 	A call to GetManagedObjects method of org.freedesktop.DBus.ObjectManager
 * 	interface will give the path in the output
 */
void UssdHandler::setModemPath()
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
 * Public interface to issue a USSD command
 */
QString UssdHandler::sendCmd(const QString& command)
{
	if (!QDBusConnection::systemBus().isConnected())
		return tr("Cannot connect to the D-Bus system bus.");

	setModemPath();

	QDBusInterface busInterface(service, path, modemInterface,
				    QDBusConnection::systemBus());
	if (!busInterface.isValid())
		return tr("Error while sending USSD command: "
			"Maybe the modem is not connected. "
			"Please connect the modem & try again");

	/* Enabling modem: Network-related operations are available now*/
	busInterface.call("Enable", true);

	QString reply = ussdCall(command);

	/* Disabling modem: Network-related operations are unavailable now*/
	busInterface.call("Enable", false);

	return reply;
}

/*
 * Actual function to issue DBus call for USSD command
 */
QString UssdHandler::ussdCall(const QString& command) const
{
	QDBusInterface busInterface(service, path, ussdInterface,
				    QDBusConnection::systemBus());

	if (!busInterface.isValid())
		return tr("Error while sending USSD command: "
			"DBus interface from Ussd not valid");

	QDBusReply<QString> reply = busInterface.call("Initiate", command);
	if (!reply.isValid())
		return (tr("Send Failed: ") + reply.error().message());

	return reply.value();
}

