; Network Settings for Duet Maestro
;
; For Crane Bowden
; by PrintM3D
;

; Machine name and Password
M550 PCraneBowden                ; Set machine name

; Ethernet Configuration
M552 P0.0.0.0 S1                 ; Enable Network and use Automatic DHCP
;M553 P0.0.0.0                   ; If necessary, set this to your netmask.
;M554 P0.0.0.0                   ; If necessary, set your network gateway.

; Enable/Disable Services
M586 P0 S1                       ; Enable HTTP
M586 P1 S1                       ; Enable FTP
M586 P2 S0                       ; Disable Telnet
