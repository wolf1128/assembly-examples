; 6. hello-world

org 100h

jmp main
message: db 'Hello World!', 0

print:
    mov ah, 0eh
._loop:
    lodsb ;  Loads a byte from the memory location pointed to by SI into AL.
    cmp al, 0
    je .done
    int 10h
    jmp ._loop
.done:
    ret
main:
    mov si, message
    call print
    ret