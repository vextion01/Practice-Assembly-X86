global _start
section .data
    n dq 6 ;

section .text
_start : 
    mov rcx, qword[n]
    mov rax , 1

facLoop : 
    imul rax, rcx
    cmp rcx, 0
    je _End
    loop facLoop

_End : 
    mov rax , 60
    mov rdi,0 
    syscall