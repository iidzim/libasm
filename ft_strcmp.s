;The order data is passed into functions through
;the registers is: rdi, rsi, rdx, rcx, r8, and r9.
;dl -> used topass 3th arg to function (lowest 8-bits)
;cl -> used topass 4th arg to function (lowest 8-bits)

section .text
	global _ft_strcmp

_ft_strcmp:
	xor rax, rax

loop:
	mov dl, byte[rsi + rax]
	mov cl, byte[rdi + rax]
	cmp dl, 0
	je end
	cmp dl, cl
	jne end
	inc rax
	jmp loop

end:
	movzx rax, cl
	movzx rdx, dl
	sub rax, rdx
	ret
