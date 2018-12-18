; bed level routine by DroneOn
;
; Heating Phase12000
M291 S0 T10 P"Heating. Please Wait."
12000
M140 S60
G10 P0 S175
M190 S60
M116
; Home Toolhead
G28

; Lift Nozzle, prompt user to clear excess filament.
G91
G1 Z50
M291 S3 P"Clear/Wipe Nozzle"
G1 Z-50
G90
; Front Left adjustment.
G1 X30 Y30 Z0
M291 S3 P"Adjust Front Left."
;Front Right adjustment.
G1 Z5
G1 X200
G1 Z0
M291 S3 P"Adjust Front Right."
;Back Right adjustment.
G1 Z5
G1 Y200
G1 Z0
M291 S3 P"Adjust Back Right."
;Back Left adjustment.
G1 Z5
G1 X30
G1 Z0
M291 S3 P"Adjust Back Left."
; Center Check.
G1 Z5
G1 X115 Y115
G1 Z0
M291 S3 P"Check Center Height."
; Prompt for adhesive.
G1 Z20
G1 Y230
M291 S2 P"Prepare Bed(opt)."

G1 X15 Y40
; Cooldown.
M291 S3 T10 P"Cooling Down..."

M140 S0
G10 P0 S0
