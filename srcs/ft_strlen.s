section .text

global _start

_start:
    mov eax, 4
    mov ebx, 1
    lea ecx, [msg]
    mov edx, len
    syscall
    jmp exit

exit:
    mov eax, 1
    mov ebx, 0
    syscall

section .data

msg: db "casse tete ce truc quand meme"
len: equ $-msg
