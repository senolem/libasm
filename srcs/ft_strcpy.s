section .text

global ft_strcpy

ft_strcpy:
    xor rax, rax ; zeroing rax
    jmp copy

copy:
    mov cl, [rsi + rax] ; copy the current byte to "1 byte" register
    mov [rdi + rax], cl ; copy the register to dest
    cmp cl, 0 ; compare the current byte with 0
    je exit ; if equal, we have finished
    inc rax ; increment our index
    jmp copy ; loop back to copy

exit:
    mov rax, rdi ; make the dest address as return value
    ret
