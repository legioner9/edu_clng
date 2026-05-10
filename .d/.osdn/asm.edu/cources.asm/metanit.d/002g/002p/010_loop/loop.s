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
#   for loopq:
#       %rcx - counter for loop

#   for st_fn.1 write() [movq $1 %rax] args:
#       %rsi - $message
#       %rdi - num descriptor (0-STDIN | 1-STDOUT | 2-STDERR | ... )
#       %rdx - lenght out
#   for st_fn.60 exit() no args

#   convent (free):
#       %rcx - [loopq]
#       %rbx - 
#       %rdx - [st_fn.1] [div] 
#       %rsi - [st_fn.1]
#       %rdi - [st_fn.1] [st_fn.60]
#       %rax - [div] [mul]

.globl _start
 
.section .text
_start:

    movq $7, %rcx # init counter
    movq $0, %rdi
main_loop:
    addq $2, %rdi # return %rcx*2->%rdi
    loopq main_loop # if %rcx-1!=0 goto main_loop: else goto far
    movq $60, %rax
    syscall
