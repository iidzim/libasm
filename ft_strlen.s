global  _ft_strlen
section .text

_ft_strlen:

    xor rax, rax
    jmp _loop

_loop:

    cmp byte[rdi + rax], 0
    je _end
    inc rax
    jmp _loop

_end:
    ret
