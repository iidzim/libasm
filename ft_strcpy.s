;rdi -> used topass 1st arg to function (64 bits)
;rsi -> used topass 2nd arg to function (64 bits)
;dl -> used topass 3th arg to function (lowest 8-bits)
;cl -> used topass 4th arg to function (lowest 8-bits)
;The order data is passed into functions through
;   the registers is: rdi, rsi, rdx, rcx, r8, and r9.

global  _ft_strcpy
section .text

	_ft_strcpy:
		xor rax, rax

	loop:
		mov dl, byte[rsi + rax]
		mov byte[rdi + rax], dl
		cmp dl, 0
		je end
		inc rax
		jne loop

	end:
		mov rax, rdi
		ret
