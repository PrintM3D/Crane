This file was created from dc42's reference of Memory Locations for use by a 128x64 LCD display, found at: https://github.com/dc42/RepRapFirmware/blob/v2-dev/src/Display/Menu.cpp

Begin--->
Menus are read from files in the /menu folder of the SD card. the root menu is called 'main'.
Each menu file holds a sequence of commands, one per line.
The following commands are supported:

image [Rnn] [Cnn] [Fnn] L"filename" *
  display the image from "filename" at position RC

text [Rnn] [Cnn] [Fnn] T"text" *
  display non-selectable "text" at position RC
  
button [Rnn] [Cnn] [Fnn] [Vnn] T"text" A"action" [L"filename"] * 
  display selectable "text" at RC, perform action when clicked
value [Rnn] [Cnn] [Fnn] [Dnn] Wnnn Nvvv *
  display the specified value at RC to the specified number of decimal places in the specified width

alter [Rnn] [Cnn] [Fnn] [Dnn] Wnnn Nvvv *
  display the specified value at RC to the specified number of decimal places in the specified width and allow it to be altered

files [Rnn] [Fnn] Nnn I"initial-directory" A"action" [L"filename"] *
  display a list of files N lines high and allow them to be selected. The list uses the full width of the display.

Rnn is the row number for the top of the element measured in pixels from the top of the display
Cnn is the column number for the left of the element measured in pixels from the left hand edge of the display
Fnn is the font to use, 0=small 1=large
Wnn is the width in pixels for the element
Dnn specifies the number of decimal places for numeric display

Vnn specifies the item's visibility (currently implemented for buttons only) with value:
0  always visible (default if not specified)
2  visible when the printer is actively printing (actively printing defined as not paused, pausing or resuming)
3  visible when the printer is NOT actively printing
4  visible when the printer is printing (includes paused, pausing and resuming states)
5  visible when the printer is NOT printing
6  visible when the printer is printing and in paused state (paused or pausing)
7  visible when the printer is printing and NOT in paused state (actively printing or resuming)
10 visible when SD card 0 is mounted
11 visible when SD card 0 is NOT mounted
20 visible when the current or default tool has a temperature fault
28 visible when the bed heater has a temperature fault

"action" can be any of:
- a Gcode command string (must begin with G, M or T). In such a string, #0 represents the full name of the current file, in double quotes, set when a file is selected
- "menu" (chains to the menu file given in the L parameter)
- "popup" (pops up the menu given in the L parameter)
NOTE: not currently implemented
- "return" (returns to the parent menu)
Multiple actions can be specified, separated by the vertical-bar character, e.g. "M32 #0|return|return|menu" but 'menu' may only be the last command

The N parameter in the "value" and "alter" commands specifies the value to display or change as follows:

000-078		Tool N first heater current temperature e.g. 0 = tool 0 current temperature (display only)

079			Currently selected tool first heater current temperature (display only)

080-089		Bed heater (N-80) current temperature e.g. 80 = bed heater 0 current temperature (display only)

090-099		Chamber heater (N-90) current temperature e.g. 90 = chamber heater 0 current temperature (display only)

100-178		Tool (N-100) first heater active temperature e.g. 100 = tool 0 active temperature

179         Currently selected tool first heater active temperature

180-189		Bed heater (N-180) active temperature e.g. 180 = bed heater 0 active temperature

190-199		Chamber heater (N-190) active temperature e.g. 190 = chamber heater 0 active temperature

200-278		Tool (N-200) first heater standby temperature e.g. 200 = tool 0 standby temperature

279         Currently selected tool first heater standby temperature

280-289		Bed heater (N-280) standby temperature e.g. 280 = bed heater 0 standby temperature

290-299		Chamber heater (N-290) standby temperature e.g. 290 = chamber heater 0 standby temperature

300-398		Fan (N-300) percent full PWM e.g. 302 = fan 2 percent

399			Current tool fan percent full PWM

400-499		Extruder (N-400) extrusion factor

500			Speed factor

510-516		Current axis location (X, Y, Z, E0, E1, E2, E3 respectively) (display only)

519			Z baby-step offset (display only)

520			Currently selected tool number

<-- End
