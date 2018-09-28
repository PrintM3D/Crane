; motion.g
; Created by PrintM3D
; for the Crane Bowden
;
; This file declares drive kinematics, axis limits, and endstop settings.

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
