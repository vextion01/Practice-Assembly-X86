; Program printRAX : Write a funcƟon (or subrouƟne) that display content of register RAX on console using Linux X86-64
; assembly language. This funcƟon, when it is called, will dump 64-bit content of RAX in hexadecimal
; on console,
; Steps to run the code
; Assemble : nasm printRAX.s -f elf64 -o printRAX.o 
; Link : gcc -no-pie -o printRAX  printRAX.o     
; Run : ./printRAX

extern printf ;The C function , to be called .
global main ; The standard gcc entry point.
            

section .data ; Data section, initialized variable.

    SYS_exit    equ    60 ; System exit.
    EXIT_SUCCESS    equ    0 ; Succuess code.
    fmt db "%016llx" , 10 ,0 ; The print format, "\n", '0'.
                             ; "%016llx"(long long int) used in the printf() function to print a 64-bit unsigned 

section .text ; Code section.

main :  ; The program label for the entry point.

    ; Create a stack-frame for store previous value.
    push rbp
    push rdi
    push rsi
    push rax

    MOV rax, 0xABCDEF0123456789 ; 64-bit hexadecimal to be printed.
    CALL PRINT_RAX ; Call function "PRINT_RAX".
    MOV rax, 1929 ; decimal value.
    CALL PRINT_RAX

    ; Pop stack (Restore stack).
    pop	rbp		
    pop rdi
    pop rsi
    pop rax

    CALL Exit ; Call function "Exit".

PRINT_RAX : 
    mov	rdi, fmt ; Format for print .
    mov	rsi, rax ; First parameter for print.
    mov	rax, 0 ; no xmm registers.
    call printf ; Call function "printf" for print value to console.
    ret ; Return control back to the calling routine.

Exit :
    mov rax,SYS_exit ; call code for exit
    mov rdi,EXIT_SUCCESS ; exit with success
    syscall 