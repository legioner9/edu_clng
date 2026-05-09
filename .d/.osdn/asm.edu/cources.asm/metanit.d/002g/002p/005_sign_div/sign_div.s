# Первая программа
.globl _start
 
.section .text
_start:
    movq $-5, %rcx
 
    movq $-24, %rax
    cqo     # расширяем регистр RDX знаковым битом из RAX 
 
    idivq %rcx         # RAX = RAX / RCX 
    # RAX =4 (результат), RDX = -2 (остаток)
    movq %rax, %rdi   # RDI = RAX = 4
    movq %rdx, %rdi   # RDI = RDX = -2
    # return 256-4=252
    movq $60, %rax  # RAX = 60
    syscall
