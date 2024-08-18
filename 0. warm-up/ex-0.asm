; 0.intro

.model small   ; memory model. It could be TINY, SMALL, MEDIUM, COMPACT and LARGE/HUGE.
.stack ; Creates the stack (segment). The default size is 1kbyte.
.data ; Creates the data segment

opa dw 3                                                                 
opb dw 2
res dw ?

.code ; creates the code segment.
.startup   ; .startup and .exit are machine instruction for executing the program in MS-DOS.

; mov al, opa  ; error
mov ax, opa
add ax, opb
mov res, ax

.exit
end 