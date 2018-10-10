; Configuration file for Duet Maestro (firmware version 2.02RC2 or newer)
; executed by the firmware on start-up
; Created by PrintM3D
; for the Crane Quad


M98 Pgeneral.g    ; Call General Configuration Module
M98 Pnetwork.g    ; Call Network Module
M98 Pmotion.g     ; Call Kinematics/Motor Module
M98 Pthermal.g    ; Call Heater/Fan/Sensing Module
M98 Ptools.g      ; Call Toolhead Module
