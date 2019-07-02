;Dual Print Start
;AG 04/12/19
;Version 1.1
;Primes all filaments and tests individual ports

;M291 P"Pre-Print Setup Starting"

M290 R0 S0 ;Clear babystepping

G28 ;Home printer

G90 ;Confirming absolute motion coordinates

G1 X1 Y55 Z5 F3600 ;Move to front left corner

G1 Z0.3 F3600 ;Drop to print height
M567 P0 E0.5:0.5 ; Ensure mixing is 50/50
G92 E0 ;Zero the extruder
M83 ;Switching to relative extrusion
G1 Y170 E36.5 F600 ;All colors, just priming

M567 P0 E0:1 
G1 X2.25 E-1 F120 ;Starting port 0 depressurizing slightly retracting previous
M567 P0 E1:0 ;Switching to port 0 
G1 Y55 E36.5 F600 ;Port 0 only line

G1 X3.5 E-1 F120 ;Starting port 1 depressurizing slightly
M567 P0 E0:1 ;Switching to port 1 
G1 Y170 E36.5 F600 ;Port 1 only line

G1 Y180 F4800 ;Wiping
G1 E-1 F300 ;Retracting port 1

M567 P0 E0.5:0.5 ;Resetting to default mixing ratio

G92 E0 ;Zero extruder

;M291 P"Beginning Print"