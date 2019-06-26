global	_ft_isalnum
extern	_ft_isalpha
extern	_ft_isdigit

section .text

_ft_isalnum:
	push	rbp
	mov		rbp, rsp

	call	_ft_isalpha
	cmp		rax, 1
	je		good
	call	_ft_isdigit

	mov		rsp, rbp
	pop		rbp
	ret

good:
	mov		rsp, rbp
	pop		rbp
	ret