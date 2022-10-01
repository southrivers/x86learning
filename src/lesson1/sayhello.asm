

section .data
    ask: db "what's your name: "
    asklen: equ $-ask
    hel: db "hello, "
    hellen: equ $-hel

section .bss
    name: resb 16

section .text
    global _start
_start:
    call _printText1
    call _getName
    call _printText2
    call _printName

    mov rax, 60
    mov rdi, 0
    syscall

_printText1:
    mov rax, 1
    mov rdi, 1
    mov rsi, ask
    mov rdx, asklen
    syscall 
    ret
_getName:
    mov rax, 0
    mov rdi, 0
    mov rsi, name
    mov rdx, 16
    syscall
    ret
_printText2:
    mov rax, 1
    mov rdi, 1
    mov rsi, hel
    mov rdx, hellen
    syscall 
    ret
_printName:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 16
    syscall 
    ret