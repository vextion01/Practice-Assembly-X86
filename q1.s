global _start
;22
section .data
    m   dw  3
    y   dw  0

section .text
_start
    
    mov dx, word[y]
    mov cx , 3
    mov ax,word[m]
    mov dx,1
    mov bx,1

part1 :

    imul dx , ax 
    dec cx
    JZ next1
    jmp part1 

next1 :
    mov ax,word[m]
    mov cx , 2

part2 :

    imul bx , ax 
    dec cx
    JZ next2
    jmp part2

next2 :
    imul bx , 2

    add dx,bx
    mov ax,word[m]

part3 :
    imul ax , -4

    add dx,ax
    inc dx

    mov word[y],dx

_End : 
    mov rax , 60
    mov rdi,0 
    syscall