global	_ft_isalpha
section	.text

_ft_isalpha:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 65
	jge		check_max_maj
	mov		rax, 0

	mov		rsp, rbp
	pop		rbp
	ret

check_max_maj:
	cmp		rdi, 90
	jle		good
	jg		check_min_min

check_min_min:
	cmp		rdi, 97
	jge		check_max_min
	mov		rax, 0

	mov		rsp, rbp
	pop		rbp
	ret

check_max_min:
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