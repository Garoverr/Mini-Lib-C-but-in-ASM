bits 64
global strpbrk
section .text

strpbrk:
    mov rax, 0
    cmp rdi, 0
    je  my_out
    cmp rsi, 0
    je  my_out

f_loop:
    movzx r8, byte [rdi + rax]
    cmp r8, 0
    je  my_out
    xor  rbx, rbx
    jmp  s_loop

s_loop:
    movzx r9, byte [rsi + rbx]
    cmp r9, 0
    je  next_loop
    cmp  r8, r9
    je   my_ret
    inc  rbx
    jmp  s_loop

next_loop:
    inc  rax
    jmp  f_loop

my_ret:
    lea  rax, [rdi + rax]
    ret

my_out:
    xor  rax, rax
    ret
