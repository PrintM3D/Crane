; motion.g
; Created by PrintM3D
; For the Crane Quad.

; Drives
M569 P0 S1 D3 V0                           ; Drive 0 goes backwards
M569 P1 S0 D3 V0                           ; Drive 1 goes backwards
M569 P2 S0 D3 V0                           ; Drive 2 goes backwards
M569 P3 S1 D3 V0                           ; Drive 3 (E0)
M569 P4 S1 D3 V0			   ; Drive 4 (E1)
M569 P5 S1 D3 V0			   ; Drive 5 (E2)
M569 P6 S1 D3 V0			   ; Drive 6 (E3)

M350 X16 Y16 Z16 E16:16:16:16 I1     		     	 ;micro-stepping
M92 X80 Y80 Z400 E1960:1960:1960:1960		     	 ; Set steps per mm
M566 X900 Y900 Z90 E120               				 ; Set maximum instantaneous speed changes
M203 X6000 Y6000 Z1200 E1800          				 ; Set maximum speeds (mm/min)
M201 X1000 Y1000 Z90 E240             				 ; Set accelerations (mm/s^2)
M906 X1000 Y1000 Z1000 E480:480:480:480 I30		 ; Set motor currents (mA)
M84 S60                               				 ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                      				 ; Set axis minima
M208 X230 Y230 Z250 S0                				 ; Set axis maxima

; Endstops
M574 X1 Y1 Z1 S1                      				 ; Set active High Endstops
