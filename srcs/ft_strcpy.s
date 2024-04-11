section .text

global ft_strcpy

ft_strcpy:
    xor rax, rax ; zeroing rax
    jmp copy

copy:
    mov bl, [rsi + rax] ; copy the current byte to "1 byte" register
    mov [rdi + rax], bl ; copy the register to dest
    cmp bl, 0 ; compare the current byte with 0
    je return ; if equal, we have finished
    inc rax ; increment our index
    jmp copy ; loop back to copy

return:
    mov rax, rdi ; make the dest address as return value
    ret
