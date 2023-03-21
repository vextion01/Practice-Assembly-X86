global _start

section .data
    n dq 2
    r dq 5
    d dq 0
    result dq 0

section .text
_start
    mov rax, [n]
    mov rcx , [r]
    mov rdx, 

cheakRound : 
    cmp rax , rcx

loopFacR :
    imul rax, rcx
    cmp rcx, 0
    je _End
    loop loopFacR  

    mov rsi,rax  

equ0 : 

    div ra  


loopCr : 
    

    imul 
    JZ

result : 
    mov [result] , 


_End : 
    mov rax , 60
    mov rdi,0 
    syscall