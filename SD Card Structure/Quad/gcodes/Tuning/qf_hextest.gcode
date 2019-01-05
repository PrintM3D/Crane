; Crane Quad Test Print
; Print M3D
G91
G28 Z0.000
G90
M83
M140 S85
M109 S235
M190 S85
;init bottom layer material
;mixed extrusion at 25%
M567 P0 E1.0:0.0:0.0:0.0
;bottom layer
;home at start
G1 X0.000 Y0.000 Z1 F5400.000
; travel to start
G1 X134.691 Y74.525 F5400.000
G1 Z0.30 F100.000
G1 F1000.000 E15
;segment one. bottom.
;color change ratio to 100% cyan
M567 P0 E1.00000:0.00000:0.00000:0.00000
G1 X90.505 F200.000 E15
;section two. bottom left
;color change to 50%cyan / 50% magenta / 0% yellow / 0% clear.
M567 P0 E0.5000:0.50000:0.00000:0.00000
G1 X68.514 Y112.965 E15
;section three. top left 
;color change to 0%cyan / 100% magenta / 0% yellow / 0% clear.
M567 P0 E0.00000:1.00000:0.00000:0.00000
G1 X90.499 Y151.051 E15
;section four. top.
;color change to 0%cyan / 50% magenta / 50% yellow / 0% clear.
M567 P0 E0.00000:0.50000:0.50000:0.00000
G1 X134.504 Y151.051 E15
;section five. top right.
;color change to 0%cyan / 0% magenta / 100% yellow / 0% clear.
M567 P0 E0.00000:0.00000:1.00000:0.00000
G1 X156.488 Y112.969 E15
;section six. bottom right.
;color change to 0%cyan / 0% magenta / 50% yellow / 50% clear.
M567 P0 E0.00000:0.00000:0.50000:0.50000
G1 X134.489 Y74.875 E15

G1 Z50 F800
G1 X115.000 Y200.000 F800
M140 S0
M104 S0
M106 S0.000
M84