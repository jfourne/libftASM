global _ft_strcmp

section .text

_ft_strcmp:
	push	rbp
	mov		rbp, rsp

	mov		rax, 0
	mov		rbx, 0

do_cmp:
	cmp		byte[rel rdi], 0
	je		end
	mov		bl, byte [rel rsi]
	cmp		byte[rel rdi], bl
	jne		end
	inc		rdi
	inc		rsi
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