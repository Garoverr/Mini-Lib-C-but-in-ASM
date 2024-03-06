bits 64
global  strcspn
section .text


strcspn:
	mov rax, 0

f_loop:
	cmp	byte[rdi + rax], 0
	je	my_ret
	mov rcx, 0
	
s_loop:
	mov	bl, byte[rsi + rcx]
	cmp	byte[rsi + rcx], 0
	je	my_incr
	cmp	bl, byte[rdi + rax]
	je	my_ret
	inc	rcx
	jmp	s_loop

my_incr:
	inc	rax
	jmp	f_loop
	
my_ret:
	ret