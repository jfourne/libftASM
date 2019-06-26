global	_ft_isneg

section .text
_ft_isneg:
	push	rbp
	mov		rbp, rsp

	cmp		edi, 0
	jl		good
	mov		rax, 0

	mov		rsp, rbp
	pop		rbp
	ret

good:
	mov		rax, 1

	mov		rsp, rbp
	pop		rbp
	ret