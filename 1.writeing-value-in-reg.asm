; Writing a value in a memory cell

.MODEL small
.STACK
.DATA
VAR DW ?

.CODE
.START
   
MOV VAR, 99 ; will be stored as 63H at the DS segment address (0720:0000). Please check out the memory cell in the mulator debug window.


.EXIT
END