bits 64
global strstr
section .text

strstr:
    xor rcx, rcx
    xor r8, r8
    xor r9, r9

_cmp:
    mov r8b, [rdi + rcx]
    mov r9b, [rsi + rcx]
    cmp r9b, 0
    je my_ret
    cmp r8b, 0
    je my_out
    cmp r8b, r9b
    jne my_end
    inc rcx
    jmp _cmp

my_end:
    cmp byte [rdi], 0
    je my_out
    inc rdi
    jmp strstr

my_ret:
    mov rax, rdi
    ret

my_out:
    mov rax, 0
    ret