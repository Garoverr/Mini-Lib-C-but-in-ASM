bits 64
global  strlen
section .text

strlen:
    mov rax, 0
    jmp check

incrmnt:
    inc rax

check:
    cmp byte [rdi + rax], 0
    jne incrmnt           
    ret
