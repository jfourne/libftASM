global	_ft_memset
section	.text

_ft_memset:
	push	rbp
	mov		rbp, rsp

	push	rdi
	mov		rax, rsi
	mov		rcx, rdx

copy:
	rep		stosb

end:
	pop		rdi
	mov		rax, rdi
	xor		rdi, rdi

	mov		rsp, rbp
	pop		rbp
	ret