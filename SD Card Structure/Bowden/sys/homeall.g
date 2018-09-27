; homeall.g
; Called to Home All Axes
;
; Created by PrintM3D
; for the Crane Bowden
; September 23rd 2018

G91               ; relative positioning
G1 Z5 F600 S2     ; lift Z prior to X Move.

G1 S1 X-305 Y-555 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F900 Y5        ; go back a few mm
G1 S1 X-305 Y-555 F900  ; move normally to X axis endstop once more (second pass)
G1 X3 Y28 F900    ; Move to Corner
G92 X0 Y0           ; X is at Zero

G1 Z-450 F600 S1
G1 Z5 F600 S2
G1 Z-450 F300 S1
G91             ; relative positioning
G1 Z5           ;lift Z relative to current position
G90             ; absolute positioning
