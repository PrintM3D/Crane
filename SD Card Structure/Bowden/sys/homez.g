; homez.g
; called to home the Z axis
; Created by PrintM3D
; for the Crane Bowden
G91               ; relative positioning
G1 Z5 F600 S2     ; lift Z relative to current position

G90              ; absolute positioning
G1 X0 Y0 F8000   ; move nozzle over the corner of bed
G1 Z-450 F1200 S1
G1 Z5 F600 S2
G1 Z-450 F120 S1
G91             ; relative positioning
G1 Z5   ; lift Z relative to current position
G90             ; absolute positioning
