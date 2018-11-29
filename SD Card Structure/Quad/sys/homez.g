; homez.g
; called to home the Z axis
;
G91              ; relative positioning
G1 Z5 F1200 S2   ; lift Z relative to current position
G90              ; absolute positioning
G1 X15 Y15 F3600 ; go to first probe point
; G30              ; home Z by probing the bed
G1 Z-450 F1200 S1
G1 Z5 F600 S2
G1 Z-450 F120 S1

; Uncomment the following lines to lift Z after probing
G91             ; relative positioning
G1 Z5 F120 S2   ; lift Z relative to current position
G90             ; absolute positioning

