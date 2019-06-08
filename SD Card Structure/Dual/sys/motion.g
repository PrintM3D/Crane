; motion.g
; Created by PrintM3D
; for the Crane Dual

; Drives
M569 P0 S1 D3 V0                           ; Drive 0 goes backwards
M569 P1 S0 D3 V0                           ; Drive 1 goes backwards
M569 P2 S0 D3 V0                           ; Drive 2 goes backwards
M569 P3 S1 D3 V0                           ; Drive 3 (E0)
M569 P4 S1 D3 V0			   ; Drive 4 (E1)

M350 X16 Y16 Z16 E16:16 I1     		     	 ;micro-stepping
M92 X80 Y80 Z400 E2040:2040		     	 ; Set steps per mm add 20 to base (2000) to increase flow 1%
M566 X900 Y900 Z90 E120               				 ; Set maximum instantaneous speed changes
M203 X6000 Y6000 Z1200 E300          				 ; Set maximum speeds (mm/min)   E300 set to help prevent grindthrough due to bad reprime settings
M201 X1000 Y1000 Z90 E240             				 ; Set accelerations (mm/s^2)
M906 X1000 Y1000 Z1000 E480:480 I30        		 ; Set motor currents (mA)
M84 S60                               				 ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                      				 ; Set axis minima
M208 X230 Y230 Z250 S0                				 ; Set axis maxima

; Endstops
M574 X1 Y1 Z1 S1                      				 ; Set active High Endstops

; Firmware Retraction Defaults
M207 S1.5 R0.0 F240 T240 Z0 ;S sets retraction and reprime in mm.  F sets feed rate.  F300 and S2.0 are max recommended.  Ignore this setting in gcode without G10/G11 calls.
