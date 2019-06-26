global	_ft_strcat
section	.text

_ft_strcat:
	push	rbp
	mov		rbp, rsp

	mov		r8, rdi
	jmp		while

while:
	cmp		byte[rel rdi], 0
	je		copy
	inc		rdi
	jmp		while

copy:
	mov		al, byte[rel rsi]
	mov		byte[rel rdi], al
	inc		rdi
	inc		rsi
	cmp		byte[rel rsi], 0
	je		end
	jmp		copy

end:
	mov		byte[rel rdi], 0
	mov		rax, r8

	mov		rsp, rbp
	pop		rbp
	ret