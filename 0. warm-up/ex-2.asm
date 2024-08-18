; 2.sum-of-two-values

.MODEL small
.STACK
.DATA
; our variables
OPD1 DW 10  ; would be stored as hex at the CS address (0720:0000) and take 4 cells.
OPD2 DW 24
RESULT DW ?

.CODE
.STARTUP
MOV AX, OPD1
ADD AX, OPD2 ; The result would be stored in the AX.
MOV RESULT, AX                      

.EXIT
END
