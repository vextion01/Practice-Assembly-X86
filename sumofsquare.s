global _start

section .data
    n dq 5
    result dq 0

section .text
_start : 
    mov rcx , qword[n]
    mov rax , 0

loopsum : 

    mov rdx , rcx
    imul rdx,rdx
    add rax , rdx  
    loop loopsum

mov qword[result] , rax

_End : 
    mov rax , 60
    mov rdi,0 
    syscall