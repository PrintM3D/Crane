; homeall.g
; called to home all axes
; Created by PrintM3D
; for the Crane Bowden

G91                    ; relative positioning
G1 Z5 F6000 S2         ; lift Z relative to current position
G1 S1 X-305 Y-505 F1800 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 X5 Y5 F600        ; go back a few mm
G1 S1 X-305 Y-505 F360  ; move slowly to X and Y axis endstops once more (second pass)
G90                    ; absolute positioning

G1 X20
G92 X0

; call independent macro for Z
M98 Phomez.g
