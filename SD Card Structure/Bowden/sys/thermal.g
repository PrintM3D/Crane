; thermal.g
; Created by PrintM3D
; for the Crane Bowden
;
; This file declares heater and fan settings.

; Heaters
M305 P0 T100000 B4036		         ; Thermistor Config for NTC 100k
M143 H0 S120                     ; Set temperature limit for heater 0 to 120C
M305 P1 T100000 B4036   	       ; Thermistor Config for NTC 100k
M143 H1 S265                     ; Set temperature limit for heater 1 to 265C

; Fans
M106 P0 S0 I0 F50                ; Set fan 0 value, no inversion, rate 50hz
