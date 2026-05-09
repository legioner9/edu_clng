# Первая программа
.globl _start
 
.section .text
_start:
    movq $16, %rdi
    jmp exit
    movq $33, %rdi
exit:
    movq $60, %rax
    syscall
