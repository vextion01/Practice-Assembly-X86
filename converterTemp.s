global _start

section .data
    f db 40
    c db 0
    
section .text
_start : 
    mov al , byte[f]
    sub al,32
    
    mov bl,al
    imul bx , 9 

    mov al,bl
    mov ah,0
    mov bl,5
    div bl

    mov byte[c] , al

_End : 
    mov rax , 60
    mov rdi,0 
    syscall