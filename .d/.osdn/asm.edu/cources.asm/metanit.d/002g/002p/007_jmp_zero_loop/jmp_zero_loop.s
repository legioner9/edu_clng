# https://metanit.com/assembler/gas/2.6.php
# {{hint}}
# %rax - num func
.globl _start
 
.section .text
_start:
    movq $14, %rcx
    movq $0, %rdi
loop:        
    addq $2, %rdi # %rdi+2->%rdi        
    subq $1, %rcx # %rcx-1->rcx        
    jnz loop # if last rezult NOT_ZERO :: goto loop:
       
    movq $60, %rax # if %rcx now=0 => %rcx*2->%rdi
    syscall
