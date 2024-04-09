section .text

global ft_strcpy

ft_strcpy:
    mov rax, 0 ; initialize rax, our return value register, to 0
    jmp copy

copy:
    
return: