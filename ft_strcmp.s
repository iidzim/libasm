;The order data is passed into functions through
;   the registers is: rdi, rsi, rdx, rcx, r8, and r9.

global _ft_strcmp
section .text

	_ft_strcmp:
		xor rax, rax

	loop:
		mov dl, byte[rsi + rax]
		mov cl, byte[rdi + rax]
		cmp dl, cl
		jne end
		inc rax
		jmp loop

	end:
		mov rax, dl
		sub rax, cl
		ret
