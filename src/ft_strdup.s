global	_ft_strdup
extern	_ft_strlen
extern	_malloc
section	.text

_ft_strdup:
	push	rbp
	mov		rbp, rsp

	push	rdi
	call	_ft_strlen

	push	rax
	mov		rdi, rax
	inc		rdi

	call	_malloc
	pop		rcx
	pop		rsi
	jc		end

	inc		rcx
	mov		rdi, rax

copy:
	rep		movsb

end:
	mov		rsp, rbp
	pop		rbp
	ret