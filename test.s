.global _start
.intel_syntax

.section .text

_start:
    mov %rax, 1 # call write
    mov %rdi, 1 # write to stdout
    lea %rsi, [message] # move message
    mov %rdx, 16 # move length
    int 0x80

    mov %rax, 60 # call exit
    mov %rdi, 130 # specify errno
    int 0x80

.section .data
    message:
    .ascii "Hello, World!!!\n"
