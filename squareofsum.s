global _start

section .data 
    n dq 10
    result dq 0

section .text
    
_start : 
    mov rcx , qword[n] 

loopsquare : 

    add rax , rcx
    loop loopsquare

    imul rax,rax
    mov qword[result] , rax

_End : 
    mov rax , 60
    mov rdi,0 
    syscall