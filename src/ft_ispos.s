global	_ft_ispos

section .text
_ft_ispos:
	push	rbp
	mov		rbp, rsp

	cmp		edi, 0
	jge		good
	mov		rax, 0

	mov		rsp, rbp
	pop		rbp
	ret

good:
	mov		rax, 1

	mov		rsp, rbp
	pop		rbp
	ret