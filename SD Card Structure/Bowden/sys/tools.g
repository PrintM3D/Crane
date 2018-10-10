; tools.g
; Created by PrintM3D
; for the Crane Bowden
;
; This file declares tools, bed leveling, and flags settings for override.
M563 P1 D0 H1                    ; Define tool 0
G10 P0 X0 Y0 Z0                  ; Set tool 0 axis offsets
G10 P0 R0 S0                     ; Set initial tool 0 active and standby temperatures to 0C

; Manual Bed Leveling
M558 P0

T0
