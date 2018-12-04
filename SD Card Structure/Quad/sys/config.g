; WARNING -- FOR INTERNAL TESTING USE
; Configuration file for Duet Maestro (firmware version 2.02RC2 or newer)
; executed by the firmware on start-up
; Created by PrintM3D
; For Crane Quad Testing
; WARNING -- FOR INTERNAL TESTING USE
;
; Please see the text file 'Motor Test 	Guide' in the root Internal
; folder for in-depth information.  This file will begin testing on
; startup!

M98 Pgeneral.g                   ; Call General Configuration Module
M98 Pnetwork.g                   ; Call Network Module
M98 Pmotion.g                    ; Call Kinematics/Motor Module
M98 Pthermal.g                   ; Call Heater/Fan/Sensing Module
M98 Ptools.g                     ; Call Toolhead Module

; Call QC start up
;M98 Pqc.g
