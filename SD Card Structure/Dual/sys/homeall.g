; homeall.g
; Called to Home All Axes
;
; Created by PrintM3D
; for the Crane Dual
; September 23rd 2018

G91               ; relative positioning
G1 Z5 F900 S2     ; lift Z prior to X Move.

G1 S1 X-305 Y-555 F4200 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 Y5 F4200       ; go back a few mm
G1 S1 X-305 Y-555 F1200  ; move normally to X axis endstop once more (second pass)
G1 X15 Y52 F4200    ; Move to Corner
G92 X0 Y0           ; X is at Zero

G1 Z-450 F900 S1
G1 Z5 F900 S2
G1 Z-450 F300 S1

G1 Z0           ;lift Z relative to current position
G90             ; absolute positioning