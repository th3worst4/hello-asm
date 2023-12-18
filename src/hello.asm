%include "includes.asm"

section .data
    string db "Hello, World",10,0

section .bss
    userInput resb 16

section .text
    global _start

_start:
    call _read
    print userInput

    exit

_read:
    mov rax, SYS_READ
    mov rdi, STDIN
    mov rsi, userInput
    mov rdx, 16
    syscall
    ret