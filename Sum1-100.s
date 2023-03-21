global _start
section .data
    m db 1
    n db 100
    Sum dw 0
    
section .text
_start :
    mov cl , byte [n]
    mov al , 0
    mov bl , byte [m]

loopSum :
    add ax, bx
    inc bx
    dec	cl
    jnz	loopSum
    
    mov word[Sum] , ax

_End : 
    mov rax , 60
    mov rdi,0 
    syscall