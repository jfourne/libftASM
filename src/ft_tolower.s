global	_ft_tolower
extern	_ft_isupper
section .text

_ft_tolower:
	push	rbp
	mov		rbp, rsp

	call	_ft_isupper
	cmp		rax, 1
	je		_lower
	mov		rax, rdi

	mov		rsp, rbp
	pop		rbp
	ret

_lower:
	mov		rax, rdi
	add		rax, 32

	mov		rsp, rbp
	pop		rbp
	ret