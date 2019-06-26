global	_ft_isdigit
section	.text

_ft_isdigit:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 48
	jge		check_max
	mov		rax, 0

	mov		rsp, rbp
	pop		rbp
	ret

check_max:
	cmp		rdi, 57
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