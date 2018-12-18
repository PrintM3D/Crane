; Created by PrintM3D
; For Crane Quad Testing

M552 S0; Disable networking
M552 S1 P192.168.1.200; Re-enable networking w/ static IP

M106 P1 S1; Turn on nozzle fan

; Call Motor Test Macros one at a time.  This section can be reconfigured.
; Uncomment the Following Lines to Enable Tests
; Call each movement axis.
M98 P"0:/Macros/Motor_Test_X"
M98 P"0:/Macros/Motor_Test_Y"
M98 P"0:/Macros/Motor_Test_Z"

G1 X140 Y400 Z100 F6000; Moving bed & extruder to convenient location

M140 S50; Heated Bed heating
G10 P0 S150; Extruder heating
