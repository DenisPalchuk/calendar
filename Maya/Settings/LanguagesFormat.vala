//
//  Copyright (C) 2011-2012 Maxwell Barvian
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

namespace Maya.Settings {

	public string DateFormat () {
		return (_("%B %e, %Y"));
	}

	public string DateFormat_Complete () {
		return (_("%A, %b %d"));
	}

	public string TimeFormat () {

        var setting = new GLib.Settings ("org.gnome.desktop.interface");
        string clockformat = setting.get_string ("clock-format");
        string outputformat;

        if (clockformat == "12h") {
            outputformat = (_("%l:%M %p"));
        }
        else {
            outputformat = (_("%H:%M"));
        }
		return outputformat;
	}

}
