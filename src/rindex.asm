bits 64
global rindex
section .text

    mov rax, 0

rindex:
    movzx ecx, byte[rdi]
    cmp cl, sil
    je assignmnt

is_next:
    cmp byte [rdi], 0
    je my_ret
    inc rdi
    jmp rindex

assignmnt:
    mov rax, rdi
    jmp is_next

my_ret:
    ret