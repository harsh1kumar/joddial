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

#ifndef USSD_HANDLER_H
#define USSD_HANDLER_H

#include <QObject>
#include <QString>

class UssdHandler : public QObject
{
	Q_OBJECT

public:
	UssdHandler();
	~UssdHandler() {};

	QString sendCmd(const QString& command);

private:
	/* Private data */
	QString service;
	QString path;
	QString modemInterface;
	QString ussdInterface;

	/* Private functions */
	QString ussdCall(const QString& command);
};

#endif // USSD_HANDLER_H
