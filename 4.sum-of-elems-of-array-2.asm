; sum of the elements of an array (ii)                                         

DIM EQU 15 ; array size

.MODEL small
.STACK
.DATA

VETT DW 2, 5, 16, 12, 34, 7, 20, 11, 31, 44, 70, 69, 2, 4, 23  ; Now what? too much variables, ain't? :(
RESULT DW ? 
 
.CODE
.STARTUP   

; algorithm:
; we gonna loop through all the elements in the VETT array and try to ADD them all.  
; requirements: An index for the array, a counter for the loop.

MOV AX, 0
MOV CX, DIM   
MOV DI, 0

loop: ADD AX, VETT[DI]
      ADD DI, 2
      DEC CX   
      JNZ loop
      
      MOV RESULT, AX


.EXIT
END