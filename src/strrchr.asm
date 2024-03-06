bits 64
global strrchr
section .text

    mov rax, 0

strrchr:
    movzx ecx, byte[rdi]
    cmp cl, sil
    je assignmnt

is_next:
    cmp byte [rdi], 0
    je my_ret
    inc rdi
    jmp strrchr

assignmnt:
    mov rax, rdi
    jmp is_next

my_ret:
    ret