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
    movq $70, %rdi # 2>>01000111 = 00010001{2} = 17{10} [11 is reset - last bit 1 CF=1]
    # movq $69, %rdi # 2>>01000101 = 00010001{2} = 17{10} [01 is reset - last bit 0 CF=0]
    shrq $2, %rdi

    jc carry_set 
    movq $0, %rdi
    jmp exit
carry_set:
    movq $1, %rdi
exit:      
    movq $60, %rax
    syscall
