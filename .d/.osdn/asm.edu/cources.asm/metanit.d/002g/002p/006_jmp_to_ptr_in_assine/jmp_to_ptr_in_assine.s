# Первая программа
.globl _start
 
.section .text
_start:
    movq $exit, %rbx
    movq $18, %rdi
    jmp *%rbx
    movq $55, %rdi
exit:
    movq $60, %rax
    syscall
