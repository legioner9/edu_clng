# Первая программа
# {{hint}}

#   for syscall:
#       %rax - num func
#   for exit:
#       %rdi - num return
#   for div:
#       %rax - first_div
#       %rdx - rem_after_div
#   for mul:
#       %rax - first_mul
#   for st_fn.1 write() [movq $1 %rax] args:
#       %rsi - $message
#       %rdi - num descriptor (0-STDIN | 1-STDOUT | 2-STDERR | ... )
#       %rdx - lenght out
#   for st_fn.60 exit() no args
#   convent (free):
#       %rcx - counter
#       %rbx - 

.globl _start
 
.section .text
_start:
    movq $1, %rbx

    # movq $2, %rbx # be ZF=0
    movq $1, %rcx # be ZF=1

    cmpq %rbx, %rcx 

    movq $2, %rbx 
    movq $4, %rcx

    cmovneq %rbx, %rdi  # if ZF=0 :: return 2
    cmoveq %rcx, %rdi   # if ZF=1 :: return 4

    # movq $15, %rdi
    movq $60, %rax
    syscall
