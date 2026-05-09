# Первая программа
.globl _start
 
.section .text
_start:
    movq $60, %rax
    # put num in %rcx
    movq $0x3b, %rcx 
    # 0x3b=59
    # put num from %rcx in %rdx as return num
    movq %rcx, %rdi
    syscall

