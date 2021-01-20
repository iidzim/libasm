global  _ft_strlen
section .text

_ft_strlen:
    xor rax, rax    ;mov rax, 0
    jmp _loop

_loop:
    cmp byte[rci + rax], 0   ;rsi[rax] == '\0' ? 
    je _end ;jump if equal
    inc rax     ;rax++
    jmp _loop

_end:
    ret
