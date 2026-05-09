# Первая программа
.globl _start
 
.section .text
_start:
    movq $0xffffffffffffffff, %rcx
    # movq $0xfffffffffffffff0, %rcx :: return 0
    movq $1, %rdx
    addq %rcx, %rdx
    # 0x1_0000000000000000 in %rdx - flag carry = 1 :: return 1
    jc carry_set_1
    movq $0, %rdi
    jmp exit_0
carry_set_1:
    movq $1, %rdi
exit_0:    
    movq $60, %rax
    syscall
