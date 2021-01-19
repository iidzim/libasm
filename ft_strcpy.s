global  _ft_strcpy
section .text

_ft_strcpy:
    xor rax, rax

_loop:
    mov dl, byte[rsi + rax]
    mov byte[rdi + rax], cl
    cmp cl, 0
    inc rax
    jne _loop
    jmp _end

_end:
    mov rdi, rax
    ret
