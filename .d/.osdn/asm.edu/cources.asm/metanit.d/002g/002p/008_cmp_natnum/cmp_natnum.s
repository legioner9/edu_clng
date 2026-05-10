# https://metanit.com/assembler/gas/2.7.php
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
    movq $0, %rax
    # cmp_natnum
    # cmp :: %rax-%rbx
    cmp %rbx, %rax 
    jc carry_set_4 
    movq $2, %rdi
    jmp exit_2
carry_set_4:
    movq $4, %rdi
exit_2:
    # only for natnum
    # if %rax<%rbx return 4 
    # if %rax>=%rbx return 2
    movq $60, %rax
    syscall
