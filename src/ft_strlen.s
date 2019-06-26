global	_ft_strlen
section	.text

_ft_strlen:
	push	rbp
	mov		rbp, rsp

	mov		rsi, 2147483647
	mov		rax, 0
	mov		rcx, 2147483647
	
count:
	repnz scasb

end:
	sub		rsi, rcx
	mov		rax, rsi
	dec		rax

	mov		rsp, rbp
	pop		rbp
	ret
