/*
 * Copyright (C) 2016 Anselmo L. S. Melo <anselmolsm@gmail.com>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import QtQuick.Layouts 1.1
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.calendar 2.0 as PlasmaCalendar

PlasmaComponents.Label {
  id: label
  PlasmaCalendar.Calendar {
    id: calendarBackend
  }
  horizontalAlignment: Text.AlignHCenter
  verticalAlignment: Text.AlignVCenter
  text: "WW"+ currentWeek()

  function currentWeek() {
    var week = calendarBackend.currentWeek()
    return week < 10 ? "0" + week : week
  }

  Layout.minimumWidth : 50
}
