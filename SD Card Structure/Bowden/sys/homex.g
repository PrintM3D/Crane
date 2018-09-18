; homex.g
; called to home the X axis
;
; Created by PrintM3D
; for the Crane Bowden

G91               ; relative positioning
G1 Z5 F600 S2    ; lift Z relative to current position

G1 S1 X-305 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F360     ; go back a few mm
G1 S1 X-305 F180  ; move slowly to X axis endstop once more (second pass)
G1 X0             ;

G1 Z-5 F600 S2   ; lower Z again
G92 X0            ;
G90               ; absolute positioning
