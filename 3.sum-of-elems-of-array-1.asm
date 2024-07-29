; sum of the elements of an array (i)

.MODEL small
.STACK
.DATA

VETT DW 5, 7, 3, 4, 3   ; remember we store in mem cells in little-endian way. In other words, we store the 5 as 05 00 in the cells of the memory. 
RESULT DW ? 
 
.CODE
.STARTUP   

MOV AX, 0
ADD AX, VETT
ADD AX, VETT + 2
ADD AX, VETT + 4
ADD AX, VETT + 6
ADD AX, VETT + 8
MOV RESULT, AX 

.EXIT
END