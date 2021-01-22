;In unsigned mode, the carry flag (CF) is set at 1 if the last operation failed.
;So the solution was to do : JC _error (jump to error if carry flag is set on 1).

global  
	_ft_read
	extern ___error

section .text

	_ft_read:
		mov rax, 0x02000003
		syscall
		jc error
		ret

	error:
        push rax
        call ___error
        pop rdi
        mov [rax], rdi
        mov rax, -1
        ret