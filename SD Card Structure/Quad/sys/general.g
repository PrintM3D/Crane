; general.g
; Created by PrintM3D
; for the Crane Quad
;
; The file sets initial movement phases and sets compatibility to RRFW.
; General preferences
G90                            ; Send absolute coordinates...
M83                            ; ...but relative extruder moves
M555 P1                        ; Set firmware compatibility to look like RepRapFirmare

; Load From Memory
M501                             ; Load saved parameters from non-volatile memory

;Configure LCD Display
M918 P1 E4
