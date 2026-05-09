# Первая программа
.globl _start
 
.section .text
_start:
    movq $60, %rax
    movq $0x11, %rcx
    # $0x11 = 16+1 = 17
    movq $3, %rdi
    # add %rcx and %rdi put in %rdi
    # %rdi = return value
    addq %rcx, %rdi
    # movq $15, %rdi
    syscall
