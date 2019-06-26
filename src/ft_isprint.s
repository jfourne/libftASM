global	_ft_isprint
section	.text

_ft_isprint:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 32
	jge		check_max
	mov		rax, 0

	mov		rsp, rbp
	pop		rbp
	ret

check_max:
	cmp		rdi, 126
	jle		good
	mov		rax, 0

	mov		rsp, rbp
	pop		rbp
	ret

good:
	mov		rax, 1

	mov		rsp, rbp
	pop		rbp
	ret