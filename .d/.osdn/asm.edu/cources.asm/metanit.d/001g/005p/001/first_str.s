# Первая программа
.globl _start

.data 
message: .asciz "Hello METANIT\n"
message1: .asciz "Hello METANIT1\n"
 
.text
_start:
    movq $message, %rsi
    movq $1, %rdi
    movq $15, %rdx
    # num of function [[1]] write() to %rax
    # 1arg adr_strin [["Hello METANIT\n"]] in %rsi 
    # 2arg num descr_out_write [[$1 to STDOUT ((0-STDIN; 2-STDERR))]] %rdi 
    # 3arg length of str [[18]]
    movq $1, %rax
    syscall 

    movq $message1, %rsi
    movq $1, %rdi
    movq $16, %rdx
    # num of function [[1]] write() to %rax
    # 1arg adr_strin [["Hello METANIT\n"]] in %rsi 
    # 2arg num descr_out_write [[$1 to STDOUT ((0-STDIN; 2-STDERR))]] %rdi 
    # 3arg length of str [[18]]
    movq $1, %rax
    # define nun of return :: in rgstr %rdi
    movq $0, %rdi
    syscall 

    movq $60, %rax
    syscall
