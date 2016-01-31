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
import QtQuick.Controls 1.0 as QtControls
import QtQuick.Layouts 1.2 as QtLayouts

Item {
  width: childrenRect.width
  height: childrenRect.height

  property alias cfg_customPrefix: customPrefixTextField.text
  property alias cfg_firstWeekOfYearIndex: firstWeekOfYearComboBox.currentIndex

  Column {
    QtLayouts.RowLayout {
      spacing: 5
      QtControls.Label {
        text: i18n("Custom prefix")
      }
      QtControls.TextField {
        id: customPrefixTextField
        text: "W"
      }
    }

    QtLayouts.RowLayout {
      spacing: 5
      QtControls.Label {
        text: i18n("First week of year")
      }
      QtControls.ComboBox {
        id: firstWeekOfYearComboBox
        model: [ "First 4-day week", "Starts on Jan 1st" ]
      }
    }
  }
}
