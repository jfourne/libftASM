global	_ft_memcpy
section	.text

_ft_memcpy:
	push	rbp
	mov		rbp, rsp

	push	rdi
	mov		rcx, rdx

copy:
	rep		movsb

end:
	pop		rdi
	mov		rax, rdi
	xor		rdi, rdi

	mov		rsp, rbp
	pop		rbp
	ret