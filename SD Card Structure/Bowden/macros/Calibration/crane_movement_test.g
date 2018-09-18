G28               ;home
G90               ;absolute positioning

; Phase One: Square 1(Outermost)
; Z = 10
G1 X0 Y0 Z10      ; 1
G1 X220 Y0 Z10    ; 2
G1 X220 Y220 Z10  ; 3
G1 X0 Y220 Z10    ; 4
G1 X0 Y0 Z10      ; 5

;Phase Two: Square 2
;Z = 30
G1 X50 Y50 Z30    ; 1
G1 X180 Y50 Z30   ; 2
G1 X180 Y180 Z30  ; 3
G1 X50 Y180 Z30   ; 4
G1 X50 Y50 Z30    ; 5

;Phase Three: Square 3
;Z = 50
G1 X100 Y100 Z50  ; 1
G1 X150 Y100 Z50  ; 2
G1 X150 Y150 Z50  ; 3
G1 X100 Y150 Z50  ; 4
G1 X100 Y100 Z50  ; 5

;Phase Four: Square 4 (Innermost)
;Z = 75
G1 X105 Y105 Z70  ; 1
G1 X110 Y105 Z70  ; 2
G1 X105 Y105 Z70  ; 3
G1 X105 Y100 Z70  ; 4
G1 X105 Y105 Z70  ; 5

;Phase Five: Square 5 (Innermost Reversed)
;Z = 90
G1 X100 Y100 Z90 ; 5
G1 X100 Y150 Z90 ; 4
G1 X150 Y150 Z90 ; 3
G1 X150 Y100 Z90 ; 2
G1 X100 Y100 Z90 ; 1

;Phase Six: Square 6
;Z = 110
G1 X50 Y50 Z110    ; 5
G1 X50 Y180 Z110   ; 4
G1 X180 Y180 Z110  ; 3
G1 X180 Y50 Z110   ; 2
G1 X50 Y50 Z110    ; 1

;Phase Seven: Square 7 (Outermost Reversed)
;Z = 130
G1 X0 Y0 Z130      ; 5
G1 X0 Y220 Z130    ; 4
G1 X220 Y220 Z130  ; 3
G1 X220 Y0 Z130    ; 2
G1 X0 Y0 Z130      ; 1
