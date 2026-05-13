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

# eax - ax (ah al) 
# ebx - bx (bh bl) 

#   convent (free):
#       %rcx - [loopq]
#       %rbx - 
#       %rdx - [st_fn.1] [div] 
#       %rsi - [st_fn.1]
#       %rdi - [st_fn.1] [st_fn.60]
#       %rax - [div] [mul]

#       %dl in %rdx

# types:
# .ascii{"str"} .asciz[str\0] .byte{1} .short(.word){2} .long{4} .octa{8} .float .double

# sections:
#

.globl _start

.section .data
hello1:
     .ascii "Hello, World!!\n"

.section .text

_start:
     call print_hello # calls the function to print the string

     mov $60, %rax # syscall: sys_exit
     xor %rdi, %rdi # exit status: 0
     syscall # calls the kernel

print_hello:
     mov $1, %rax # syscall: sys_write
     mov $1, %rdi # file descriptor: stdout
     mov $hello1, %rsi # string address
     mov $13, %rdx # string length
     syscall # calls the kernel
     ret # returns to _start
    