section .data
    text: db "hello world ",10,12,0

section .text
    global _start
_start:
    mov rax,text
    call _print

    mov rax,60
    mov rdi,1
    syscall



_print:
; push will reserve the address of stack top after push data onto stack
    push rax
    mov rbx,0
    ; 这里不可以调用_loop方法，会报错，原因待排查
    ; call _loop
    ; ret
_loop:
    inc rax
    inc rbx
    mov cl, [rax]
    cmp cl,0
    jne _loop

    mov rax,1
    mov rdi,1
    pop rsi
    mov rdx,rbx
    syscall

    ret
