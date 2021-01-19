global _ft_strcmp
section .text

_ft_strcmp:
    xor rax, rax
    jmp _loop

_loop:
    mov dl, byte[rsi + rax]
    mov cl, byte[rdi + rax]
    cmp dl, cl
    jne _end
    inc rax
    jmp _loop

_end:
    mov rax, dl
    sub rax, cl
    ret