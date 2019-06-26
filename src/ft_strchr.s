global _ft_strchr

section .text

_ft_strchr:
	push	rbp
	mov		rbp, rsp

do_strchr:
	cmp		sil, byte[rel rdi]
	je		end
	cmp		byte[rel rdi], 0
	je		end_error
	inc		rdi
	jmp		do_strchr

end:
	mov		rax, rdi

	mov		rsp, rbp
	pop		rbp
	ret

end_error:
	mov		rax, 0

	mov		rsp, rbp
	pop		rbp
	ret