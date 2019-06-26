global	_ft_cat

section	.data
error_print:
	.string		db	"read error", 10, 0
	.len		equ $ - error_print.string

section	.bss
buf:	resb	4096

section	.text
_ft_cat:
	push	rbp
	mov		rbp, rsp

do_cat:
	push	rdi
	cmp		edi, 0
	jl		_error
	mov		rax, 0x2000003
	lea		rsi, [rel buf]
	mov		rdx, 4095
	syscall
	jc		_error
	lea		r8, [rel buf]
	cmp		r8, 0
	je		_error
	cmp		rax, 0
	je		_end

	mov		rdi, 1
	lea		rsi, [rel buf]
	mov		rdx, rax
	mov		rax, 0x2000004
	syscall
	jc		_error
	pop		rdi
	jmp		do_cat

_error:
	mov		rdi, 1
	lea		rsi, [rel error_print.string]
	mov		rdx, error_print.len
	mov		rax, 0x2000004
	syscall
	jmp		_end

_end:
	pop		rdi

	xor		rdi, rdi

	mov		rsp, rbp
	pop		rbp
	ret