global _start

section .data
    n dq 2
    r dq 5
    result dq 0

section .text
_start
    mov rax, [n]
    mov rcx , [r]
    mov rdx, [n]
mulLoop :

    dec rcx
    JZ resultShow
    imul rdx , rax 
    jmp mulLoop

resultShow :
    mov [result] , rdx

_End : 
    mov rax , 60
    mov rdi,0 
    syscall