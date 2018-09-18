; bed.g
; called by G32
; Created for the Crane Bowden
; by PrintM3D

; set leveling conditions
M561                              ; clear any bed transform
M669 K0							              ; necessary kinematics call prior to M671
M671 X32.0:202.0:202.0:30.0 Y32.0:32.0:202.0:202.0 P0.7  ; set points and pitch

; perform leveling movements.  follow DWC prompts.
G28                               ; home
G30 P0 X32 Y32 H2 Z-99999				  ; probe front left adjustment screw
G30 P1 X202 Y32 H2 Z-99999				; probe front right adjustment screw
G30 P2 X202 Y202 H2 Z-99999				; probe back right adjustment screw
G30 P3 X30 Y202 H2 Z-99999 S4			; probe back left adjustment screw
