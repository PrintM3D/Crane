;Quad Print Start
;AG 04/12/19
;Version 1.1
;Primes all filaments and tests individual ports

M291 P"Pre-Print Setup Starting"

M290 R0 S0 ;Clear babystepping

G28 ;Home printer

G90 ;Confirming absolute motion coordinates

G1 X1 Y30 Z5 F3600 ;Move to front left corner

G1 Z0.3 F3600 ;Drop to print height
G92 E0 ;Zero the extruder
M83 ;Switching to relative extrusion
G1 Y170 E44.5 F750 ;All colors, just priming
G1 Y195 F180 ;De-pressurizing & oozing

M567 P0 E0:1:1:1 ;Switching to ports 1-3

G1 E-1 F3600 ;Retracting ports 1-3

M567 P0 E1:0:0:0 ;Switching to port 0 only

;No need to prime, wasn't retracted

G1 X3.5 E1.6 F750 ;Starting port 0
G1 Y55 E44.5 F750 ;Port 0 only line
G1 Y30 F180 ;Port 0 de-pressurizing & oozing

G1 E-1 F3600 ;Retracting port 0

M567 P0 E0:1:0:0 ;Switching to port 1 only

G1 E1 F1800 ;Priming port 1

G1 X6 E1.6 F750 ;Starting port 1
G1 Y170 E44.5 F750 ;Port 1 only line
G1 Y195 F180 ;Port 1 de-pressurizing & oozing

G1 E-1 F3600 ;Retracting port 1

M567 P0 E0:0:1:0 ;Switching to port 2 only

G1 E1 F1800 ;Priming port 2

G1 X8.5 E1.6 F750 ;Starting port 2
G1 Y55 E44.5 F750 ;Port 2 only line
G1 Y30 F180 ;Port 2 de-pressurizing & oozing

G1 E-1 F3600 ;Retracting port 2

M567 P0 E0:0:0:1 ;Switching to port 3 only

G1 E1 F1800 ;Priming port 3

G1 X11 E1.6 F750 ;Starting port 3
G1 Y170 E44.5 F750 ;Port 3 only line
G1 Y195 F180 ;Port 3 de-pressurizing & oozing
G1 Y205 F4800 ;Wiping

G1 E-1 F3600 ;Retracting port 3

M567 P0 E0.25:0.25:0.25:0.25 ;Resetting to default mixing ratio

G92 E0 ;Zero extruder

M291 P"Beginning Print"