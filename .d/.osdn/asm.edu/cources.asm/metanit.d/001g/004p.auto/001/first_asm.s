# comment
# directiva .global define mark vizible out of programm - for compiler
.globl _start

# directiva .section def section of prog : text for instucion of prog
.section .text

# start: mark starting prog
_start:
    # command $60 as move to rgstr %rax
    movq $60 , %rax
    # define nun of return :: in rgstr %rdi
    movq $34, %rdi
    # os call first command
    syscall
