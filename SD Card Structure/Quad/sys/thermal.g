; thermal.g
; Created by PrintM3D
; for the Crane Quad

; This file declares heater and fan settings.
; Heaters
M305 P0 T100000 B4006		         ; Thermistor Config for NTC 100k
M143 H0 S120                     ; Set temperature limit for heater 0 to 120C
M305 P1 T100000 B3988        	   ; Thermistor Config for NTC 100k
M143 H1 S265                     ; Set temperature limit for heater 1 to 265C

; Fans
; For Crane Quad: F0 is Heatsink Fan, F1 is Part Cooling fans, F2 is Case Fan
M106 P0 T45 H1 F50                ; Set Heatsink Fan F0 to Thermostatic
M106 P1 H-1 F50                   ; Set Part Cooler Fans F1 to Gcode Control
M106 P2 S0.8 F50                  ; Set case fan always on at 80%
