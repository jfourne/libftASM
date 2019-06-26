global	_ft_islower
section	.text

_ft_islower:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 97
	jge		check_max
	mov		rax, 0

	mov		rsp, rbp
	pop		rbp
	ret

check_max:
	cmp		rdi, 122
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