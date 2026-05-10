# https://metanit.com/assembler/gas/2.11.php
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
    movb $69, %al
    shlb $2, %al # 01000101<<2 = 00010100{2} = 20{10} [01 be reject :: CF=1]
    # control CF carry 
    jc curry_set # be return 1
    movq $0, %rdi
    jmp exit
curry_set:
    movq $1, %rdi
exit:
    movq $60, %rax
    syscall
