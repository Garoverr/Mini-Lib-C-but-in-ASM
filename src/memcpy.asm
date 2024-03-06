bits 64
global memcpy
section .text

memcpy:
    mov rax, 0
    mov rcx, 0
    
my_loop:
    cmp rcx, rdx
    je my_ret
    mov r9b, byte[rsi + rcx]
    mov byte[rdi + rcx], r9b
    inc rcx
    jmp my_loop

my_ret:
    mov rax, rdi
    ret
