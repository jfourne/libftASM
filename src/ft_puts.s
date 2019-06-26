global	_ft_puts
section	.text

_ft_puts:
	push	rbp
	mov		rbp, rsp

	mov		r8, 0
	cmp		rdi, 0
	je		null
	mov		rsi, rdi

count:
	cmp		byte[rdi], 0
	je		end

while:
	inc		r8
	inc		rdi
	jmp		count

end:
	mov		rax, 0x2000004
	mov		rdi, 1
	mov		rdx, r8
	syscall
	mov		rax, 0x2000004
	mov		rdi, 1
	lea		rsi, [rel error.string + 6]
	mov		rdx, 1
	syscall
	xor		rdi, rdi
	jmp		ret_value

null:
	mov		rax, 0x2000004
	mov		rdi, 1
	lea		rsi, [rel error.string]
	mov		rdx, error.len
	syscall
	xor		rdi, rdi
	jmp		ret_value

return:
	mov		rsp, rbp
	pop		rbp
	ret

ret_value:
	cmp		rax, -1
	je		return
	mov		rax, 10
	jmp		return


section	.data
error:
	.string	db	"(null)", 10, 0
	.len	equ	$ - error.string