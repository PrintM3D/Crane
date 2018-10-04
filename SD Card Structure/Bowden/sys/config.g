; Central Configuration (config.g)
; executed by the firmware on start-up
; Created by PrintM3D
; for the Crane Bowden
;
; Logging Settings
;
;M929 P"eventlog.txt" S1  	     ; Uncomment This Line to Enable Event Logging

; General preferences
G90                              ; Send absolute coordinates...
M83                              ; Set relative extruder moves
M555 P1                          ; Set firmware compatibility Mode to RRFW
M501

M98 Pnetwork.g                   ; Call Network Module
M98 Pmotion.g                    ; Call Kinematics/Motor Module
M98 Pthermal.g                   ;
M98 Ptools.g                     ;

T0                               ; Select first tool
