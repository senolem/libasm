section .text

global ft_strlen

ft_strlen:
    mov rax, 0 ; initialize rax, our return value register, to 0
    jmp compare ; jump to compare 'loop'

increment:
    inc rax ; increment rax, our return value

compare:
    cmp BYTE [rdi + rax], 0 ; compares each byte (char) to 0 (C string)
    jne increment
    ret ; falls through this instruction if the previous 'jne' instruction condition is not met
