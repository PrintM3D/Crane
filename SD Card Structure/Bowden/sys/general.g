; general.g
; Created by PrintM3D
; for the Crane Bowden
;
; The file sets initial movement phases and sets compatibility to RRFW.
;
; Logging Settings
;
;M929 P"eventlog.txt" S1  	     ; Uncomment This Line to Enable Event Logging
;
; General preferences
G90                              ; Send absolute coordinates...
M83                              ; Set relative extruder moves
M555 P1                          ; Set firmware compatibility Mode to RRFW
M501
