; 1. Search for the min character

.MODEL small
.STACK

DIM     EQU     20
.DATA
TABLE   DB      DIM DUP (?)
.CODE 
.STARTUP

        MOV CX, DIM
        LEA DI, TABLE ; load the address (not value) of the operand into a register.
        MOV AH, 1 ; reading mode
lab1:   INT 21H
        MOV [DI], AL
        INC DI
        DEC CX
        CMP CX, 0
        JNE lab1 ; loop 20 times
        MOV CL, 0FFH
        MOV DI, 0
ciclo:  CMP CL, TABLE[DI] ; compare the current minimum
        JB dopo ; jumo if below
        MOV CL, TABLE[DI] ; store new minimum
dopo:   INC DI
        CMP DI, DIM
        JB ciclo
output: MOV DL, CL
        MOV AH, 2; writing mode
        INT 21H
.EXIT

END