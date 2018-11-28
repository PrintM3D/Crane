; Network
M550 PCraneQuad                ; Set machine name
M552 P0.0.0.0 S1               ; Enable network and acquire dynamic address via DHCP
M586 P0 S1                     ; Enable HTTP
M586 P1 S0                     ; Disable FTP
M586 P2 S0                     ; Disable Telnet