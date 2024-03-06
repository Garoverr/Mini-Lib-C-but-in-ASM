bits 64
global strchr
section .text

    mov rax, 0

strchr:
    movzx ecx, byte[rdi]
    cmp cl, sil
    je my_ret
    inc rdi
    test cl, cl
    jnz strchr
    mov edi, 0

my_ret:
    mov rax, rdi
    ret 
