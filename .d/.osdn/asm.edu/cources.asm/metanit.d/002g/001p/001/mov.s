# Первая программа
.globl _start
 
.section .text
_start:
    movq $60, %rax
    # put num in %rcx
    movq $33, %rcx
    # put num from %rcx in %rdx as return num
    movq %rcx, %rdi
    syscall
