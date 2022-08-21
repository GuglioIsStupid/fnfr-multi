--[[----------------------------------------------------------------------------
This file is part of Friday Night Funkin' Rewritten

Copyright (C) 2021  HTV04

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
------------------------------------------------------------------------------]]
-- Add custom keybinds/new controls here
-- set these as a defualt so no crashing
customBindLeft = "a"
customBindRight = "d"
customBindUp = "w"
customBindDown = "s"
if love.system.getOS() == "NX" then
	return baton.new {
		controls = {
			left = {"axis:leftx-", "button:dpleft", "key:left"},
			down = {"axis:lefty+", "button:dpdown", "key:down"},
			up = {"axis:lefty-", "button:dpup", "key:up"},
			right = {"axis:leftx+", "button:dpright", "key:right"},
			confirm = {"button:b", "key:return"},
			back = {"button:a", "key:escape"},
			debugZoomOut = {"key:["},
			debugZoomIn = {"key:]"},
			pause = {"key:p"},

			gameLeftB = {"key:left"},
			gameDownB = {"key:down"},
			gameUpB = {"key:up"},
			gameRightB = {"key:right"},

			gameLeftE = {"key:a"},
			gameDownE = {"key:s"},
			gameUpE = {"key:w"},
			gameRightE = {"key:d"},
			gameBack = {"button:start", "key:escape"},
		},
		joystick = love.joystick.getJoysticks()[1]
	}
else
	return baton.new {
		controls = {
			left = {"key:left", "axis:leftx-", "button:dpleft"},
			down = {"key:down", "axis:lefty+", "button:dpdown"},
			up = {"key:up", "axis:lefty-", "button:dpup"},
			right = {"key:right", "axis:leftx+", "button:dpright"},
			confirm = {"key:return", "button:a"},
			back = {"key:escape", "button:b"},
			debugZoomOut = {"key:["},
			debugZoomIn = {"key:]"},
			pause = {"key:p"},

			gameLeftB = {"key:left"},
			gameDownB = {"key:down"},
			gameUpB = {"key:up"},
			gameRightB = {"key:right"},
			
			gameLeftE = {"key:a"},
			gameDownE = {"key:s"},
			gameUpE = {"key:w"},
			gameRightE = {"key:d"},
			gameBack = {"key:escape", "button:start"},
		},
		joystick = love.joystick.getJoysticks()[1]
	}
end
