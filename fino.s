global _start 

section .data
    n dq 10
    result dq 0

section .text

_start :
    mov rcx, qword[n]
    mov rax , 0 
    mov rbx , 1 

cheakN : 
    cmp word[n] , 1
    mov rax, rcx
    jle _end

loopfibonacci : 
    mov rax , rbx   
    mov rbx , rdx
    add rax, rbx
    mov rdx, rax 
    dec rcx
    cmp rcx, 0
    jne loopfibonacci
    
    mov qword[result] , rax
_end :
    mov rax, 60	;exit
	mov rdi, 0
	syscall