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

#include <QApplication>

int main(int argc, char * argv[])
{
	QApplication app(argc, argv);
	app.setWindowIcon(QIcon(":/Jododial.png")); /* Setting Icon for application */

	Jododial j;
	j.show();

	return app.exec();
}

