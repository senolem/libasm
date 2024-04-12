section .text

global ft_strcmp

ft_strcmp:
    mov cl, BYTE [rdi] ; copy first s1 byte (char)
    mov dl, BYTE [rsi] ; copy first s2 byte (char)
    cmp cl, 0 ; check if s1 is finished
    je exit
    cmp dl, 0 ; check if s2 is finished
    je exit
    cmp cl, dl ; check if both bytes (chars) are equal
    jne exit
    inc rdi ; increase s1 pointer
    inc rsi ; increase s2 pointer
    jmp ft_strcmp ; loop back

exit:
    movzx rax, cl ; save current s1 byte + 0
    movzx r8, dl ; save current s2 byte + 0
    sub rax, r8 ; s1 char - s2 char (to get 0, 1 or -1)
    ret
