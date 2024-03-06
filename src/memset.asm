bits 64
global memset
section .text


memset:
    mov rax, 0
    mov rcx, 0

my_loop:
    cmp rcx, rdx
    jge my_ret
    mov byte[rdi + rcx], sil
    inc rcx
    jmp my_loop

my_ret:
    mov rax, rdi
    ret