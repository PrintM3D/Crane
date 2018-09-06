; homez.g
; called to home the Z axis
; Created by PrintM3D
; for the Crane Bowden
G91               ; relative positioning
G1 Z5 F600 S2     ; lift Z relative to current position
G90               ; absolute positioning
G1 X10 Y10 F3600   ; move nozzle over the corner of bed
G1 Z-450 F600 S1
G1 Z5 F600 S2
G1 Z-450 F120 S1
G91             ; relative positioning
G1 Z5 F120 S2   ; lift Z relative to current position
G90             ; absolute positioning
