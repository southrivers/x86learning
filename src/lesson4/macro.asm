%include "linux64.inc"
; 引入宏
section .data
    text db "hello world \n", 10,0

section .text
    global _start

_start:
    print text
    exit