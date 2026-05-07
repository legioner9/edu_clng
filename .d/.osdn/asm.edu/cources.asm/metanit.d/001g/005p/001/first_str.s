# Первая программа
.globl _start

.data 
message: .asciz "Hello METANIT\n"
 
.text
_start:
    movq $message, %rsi
    movq $1, %rdi
    movq $18, %rdx
    movq $1, %rax
    syscall 

    movq $60, %rax
    syscall
