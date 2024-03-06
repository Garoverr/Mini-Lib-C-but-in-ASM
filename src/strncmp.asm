bits 64
global strncmp
section .text


    mov rax, 0

strncmp:
    cmp rdx, 0
    je my_ret

    mov al, byte [rdi]
    mov bl, byte [rsi]

    cmp al, 0
    je my_ret
    cmp bl, 0
    je my_ret
    cmp al, bl
    jne my_ret
    inc rdi
    inc rsi
    dec rdx
    jmp strncmp

my_ret:
    sub al, bl
    movsx rax, al
    ret

my_out:
    mov rax, -1
    ret