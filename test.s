global _start

section .data 
    n dq 5
    result dq 0

section .text
    
  ; mov rcx , qword[n] 

_start :
    mov rcx , qword[n] 

loopsquare : 

    ;add rax , rcx
    loop loopsquare

    ;imul rax,rax
    ;mov qword[result] , rax

_End : 
    mov rax , 60
    mov rdi,0 
    syscall