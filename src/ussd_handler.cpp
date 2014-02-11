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

UssdHandler::UssdHandler() :
	service("org.freedesktop.ModemManager1"),
	modemInterface("org.freedesktop.ModemManager1.Modem"),
	ussdInterface("org.freedesktop.ModemManager1.Modem.Modem3gpp.Ussd")
{
	path = "/org/freedesktop/ModemManager1/Modem/0";
}

/*
 * Public interface to issue a USSD command
 */
QString UssdHandler::sendCmd(const QString& command) const
{
	if (!QDBusConnection::systemBus().isConnected())
		return tr("Cannot connect to the D-Bus system bus.");

	QDBusInterface busInterface(service, path, modemInterface,
				    QDBusConnection::systemBus());
	if (!busInterface.isValid())
		return tr("Error while sending USSD command: "
			"DBus interface from Modem not valid");

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

