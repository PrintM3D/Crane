; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
; Created for the Crane
; by PrintM3D
;
M400			; Wait for movement buffer to clear.
M104 S0 		; Extruder heater off
M140 S0 		; Bed heater off
G91  			; Relative positioning
M220 S100		; Reset Speed Factor to 100%
M221 S100		; Reset Extrusion Factor to 100%
G1 E-2			; Relieve pressure.
G1 Z5			; raise nozzle 5mm from printed part
G1 X5 Y5		; Shift nozzle
G90			    ; Absolute positioning
M106 S0			; Fan off
M104 S0			; extruder heater off
M84			    ; Steppers off
