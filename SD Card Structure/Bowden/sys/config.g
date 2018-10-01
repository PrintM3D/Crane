; Central Configuration (config.g)
; executed by the firmware on start-up
; Created by PrintM3D
; for the Crane Bowden
;
; Logging Settings
;
;M929 P"eventlog.txt" S1  	     ; Uncomment This Line to Enable Event Logging

; General preferences
G90                              ; Send absolute coordinates...
M83                              ; Set relative extruder moves
M555 P1                          ; Set firmware compatibility Mode to RRFW

M98 Pnetwork.g                   ; Call Network Module

; Drives
M569 P0 S1 D3 V0                 ; Drive 0 goes forwards
M569 P1 S0 D3 V0                 ; Drive 1 goes backwards
M569 P2 S0 D3 V0                 ; Drive 2 goes backwards
M569 P3 S1 D3 V0                 ; Drive 3 goes forwards
M350 X32 Y32 Z16 E16 I1          ; Set Microstepping
M92 X160 Y160 Z400 E96           ; Set steps per mm
M566 X900 Y900 Z90 E240          ; Set Maximum Jerk (mm/min)
M203 X9000 Y9000 Z1200 E12000    ; Set maximum speeds (mm/min)
M201 X1200 Y1200 Z90 E120        ; Set accelerations (mm/s^2)
M906 X1000 Y1000 Z1000 E1100 I30 ; Set motor currents (mA) and idle
M84 S60                          ; Set idle timeout


; Axis Limits
M208 X0 Y0 Z0 S1                 ; Set axis minima
M208 X230 Y230 Z250 S0           ; Set axis maxima

; Endstops
M574 X1 Y1 Z1 S1                 ; Set active high endstops

; Heaters
M305 P0 T100000 B4006		         ; Thermistor Config for NTC 100k
M143 H0 S120                     ; Set temperature limit for heater 0 to 120C
M305 P1 T100000 B4006   	       ; Thermistor Config for NTC 100k
M143 H1 S265                     ; Set temperature limit for heater 1 to 265C

; Fans
M106 P0 S0 I0 F50                ; Set fan 0 value, no inversion, rate 50hz

; Tools
M563 P0 D0 H1                    ; Define tool 0
G10 P0 X0 Y0 Z0                  ; Set tool 0 axis offsets
G10 P0 R0 S0                     ; Set initial tool 0 active and standby temperatures to 0C

; Miscellaneous
M501                             ; Load saved parameters from non-volatile memory
T0                               ; Select first tool

; Manual Bed Leveling
M558 P0

;Configure LCD Display
M918 P1 E4