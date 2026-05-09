# Первая программа
.globl _start
 
.data
pointer: .quad exit

.section .text

_start:
    movq $19, %rdi
    jmp *pointer
    movq $144, %rdi
exit:
    movq $60, %rax
    syscall
