global	_ft_isupper
section	.text

_ft_isupper:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 65
	jge		check_max
	mov		rax, 0

	mov		rsp, rbp
	pop		rbp
	ret

check_max:
	cmp		rdi, 90
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