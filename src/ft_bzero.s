global	_ft_bzero
section	.text

_ft_bzero:
	push	rbp
	mov		rbp, rsp

	mov		rbp, rsp
	mov		r9, rsi

if:
	cmp		r9, 0
	jbe		else

then:
	mov		byte[rel rdi], 0
	inc		rdi
	dec		r9
	jmp		if

else:
	xor		rdi, rdi

	mov		rsp, rbp
	pop		rbp
	ret