# Первая программа
# {{hint}}

.globl _start
 
.section .text
_start:
    movq $15, %rdi
    movq $60, %rax
    syscall
