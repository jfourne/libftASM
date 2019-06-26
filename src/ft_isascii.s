global	_ft_isascii
section	.text

_ft_isascii:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 0
	jge		check_max
	mov		rax, 0

	mov		rsp, rbp
	pop		rbp
	ret

check_max:
	cmp		rdi, 127
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