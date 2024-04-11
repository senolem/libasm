section .text

global ft_strlen

ft_strlen:
    xor rax, rax ; zeroing rax
    jmp compare ; jump to compare 'loop'

compare:
    cmp BYTE [rdi + rax], 0 ; compares each byte (char) to 0 (C string)
    jne increment
    ret ; falls through this instruction if the previous 'jne' instruction condition is not met

increment:
    inc rax ; increment rax, our return value
