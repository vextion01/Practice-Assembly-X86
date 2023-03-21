global _start

section .data 
    height dq 5
    width dq 10
    result dq 0

section .text
_start : 
    mov rax ,  [height] 
    mov rcx , [width] 

    imul rax , rcx
    sar rax , 1
    mov [result] , rax

_End : 
    mov rax , 60
    mov rdi,0 
    syscall
