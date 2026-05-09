# Первая программа
.globl _start
 
.section .text
_start:
    movq $60, %rax
    movq $15, %rdi
    movq $4, %rcx
    # %rdi - %rcx = %rdi
    subq %rcx, %rdi
    syscall
