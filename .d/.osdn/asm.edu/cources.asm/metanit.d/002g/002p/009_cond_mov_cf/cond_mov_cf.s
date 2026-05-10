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
#       %rdx - 

.globl _start
 
.section .text
_start:
    movq $0xffffffffffffffff, %rcx # carry flag be CF=1
    # movq $0xffffffffffffff0, %rcx # carry flag be CF=0
    movq $1, %rdx
    add %rcx, %rdx 

    movq $2, %rcx
    movq $4, %rdx

    cmovncq %rcx, %rdi # %rdi=2 if CF=0
    cmovcq %rdx, %rdi  # %rdi=4 if CF=1

    # movq $15, %rdi
    movq $60, %rax
    syscall
