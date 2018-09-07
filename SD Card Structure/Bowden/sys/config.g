; RepRap Firmware by dc42 v2.02R3
; executed by the firmware on start-up
; Created by PrintM3D
; for the Crane Bowden

M929 P"eventlog.txt" S1
; General preferences
G90                              ; Send absolute coordinates...
M83                              ; ...but relative extruder moves
M555 P1                          ; Set firmware compatibility to look like RepRapFirmare

; Network
M550 PCraneBowden                ; Set machine name
M551 Pconductor                  ; Set password
M552 P0.0.0.0 S1                 ; Enable network and set IP address
M553 P255.255.255.0              ; Set netmask
M554 P10.0.0.1                   ; Set gateway
M586 P0 S1                       ; Enable HTTP
M586 P1 S1                       ; Enable FTP
M586 P2 S0                       ; Disable Telnet

; Drives
M569 P0 S1                       ; Drive 0 goes forwards
M569 P1 S0                       ; Drive 1 goes backwards
M569 P2 S0                     ; Drive 2 goes backwards
M569 P3 S1                     ; Drive 3 goes forwards
M350 X64 Y64 Z64 E16 I1		     ; Set up x64 Microstepping on X, Y, and Z. Set x16 Microstepping on Extruder.  All Steppers Interpolated to x256
M92 X320 Y320 Z1600 E112       ;Set steps per mm
M566 X900 Y900 Z90 E120        ; Set maximum instantaneous speed changes (mm/min)
M203 X6000 Y6000 Z1200 E12000  ; Set maximum speeds (mm/min)
M201 X1000 Y1000 Z90 E120      ; Set accelerations (mm/s^2)
M906 X850 Y850 Z1000 E1000 I30 ; Set motor currents (mA) and motor idle factor in per cent
M84 S60                        ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1               ; Set axis minima
M208 X230 Y230 Z250 S0         ; Set axis maxima

; Endstops
M574 X1 Y1 Z1 S1               ; Set active high endstops

; Heaters
M305 P0 T100000 B4138 C0 R2200 ; Set thermistor + ADC parameters for heater 0
M143 H0 S120                   ;si Set temperature limit for heater 0 to 120C
M305 P1 T100000 B4138 C0 R2200 ; set E0 thermistor parameters
M143 H1 S265                   ; Set temperature limit for heater 1 to 265C

; Fans
M106 P0 S0 I0 F500             ; Set fan 0 value, no inversion, rate 500. This is the typical Setup for a Gcode Controlled Fan

; Tools
M563 P0 D0 H1                  ; Define tool 0
G10 P0 X0 Y0 Z0                ; Set tool 0 axis offsets
G10 P0 R0 S0                   ; Set initial tool 0 active and standby temperatures to 0C

; Automatic saving after power loss is not enabled

; Custom settings

; Miscellaneous
M501                           ; Load saved parameters from non-volatile memory
T0                             ; Select first tool