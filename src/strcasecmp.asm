bits 64
global strcasecmp
section .text

strcasecmp:
    mov rcx, 0
    mov rax, 0
    mov r8, 0
    mov r9, 0
    
my_loop:
	mov r8b, [rdi+rcx]
	mov r9b, [rsi+rcx]
	cmp r8b, 0
	je my_ret
	cmp r9b, 0
	je my_ret
    cmp r8b, 90
    jg end_lower1
	cmp r8b, 65
    jl end_lower1
    add r8b, 32

end_lower1:
    cmp r9b, 65
    jl end_lower2
    cmp r9b, 90
   	jg end_lower2
   	add r9b, 32

end_lower2:
	cmp r8b, r9b
    jne my_ret
	inc rcx
	jmp my_loop

my_ret:
    sub r8, r9
    mov rax, r8
    ret