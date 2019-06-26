global _ft_strncmp

section .text

_ft_strncmp:
	push	rbp
	mov		rbp, rsp

	mov		rax, 0
	mov		rbx, 0
	dec		rdx

do_cmp:
	cmp		rdx, 0
	je		end
	cmp		byte[rel rdi], 0
	je		end
	mov		bl, byte [rel rsi]
	cmp		byte[rel rdi], bl
	jne		end
	inc		rdi
	inc		rsi
	dec		rdx
	jmp		do_cmp

end:
	mov		al, byte [rel rdi]
	mov		bl, byte [rel rsi]
	cmp		al, bl
	ja		sub_al
	jb		sub_bl

sub_al:
	sub		al, bl

	mov		rsp, rbp
	pop		rbp
	ret

sub_bl:
	sub		bl, al
	mov		al, bl
	neg		rax

	mov		rsp, rbp
	pop		rbp
	ret