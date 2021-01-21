;rax -> return value
;rdi -> used to pass 1st arg to function
;The order data is passed into functions through
;   the registers is: rdi, rsi, rdx, rcx, r8, and r9.

global  _ft_strlen
section .text

	_ft_strlen:
		xor rax, rax

	loop:
		cmp byte[rdi + rax], 0
		je end
		inc rax
		jmp loop

	end:
		ret
