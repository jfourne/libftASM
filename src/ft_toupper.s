global	_ft_toupper
extern	_ft_islower
section .text

_ft_toupper:
	push	rbp
	mov		rbp, rsp

	call	_ft_islower
	cmp		rax, 1
	je		_upper
	mov		rax, rdi

	mov		rsp, rbp
	pop		rbp
	ret

_upper:
	mov		rax, rdi
	sub		rax, 32

	mov		rsp, rbp
	pop		rbp
	ret