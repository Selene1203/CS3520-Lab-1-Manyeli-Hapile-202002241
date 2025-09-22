.data
prompt: .asciz "Enter height: "
star:   .asciz "*"
nl:     .asciz "\n"

.text
.globl _start
_start:
    la a0, prompt
    li a7, 4
    ecall

    li a7, 5
    ecall
    mv t0, a0
    li t1, 1

outer_loop:
    bgt t1, t0, exit
    li t2, 0

inner_loop:
bge t2, t1, newline
    la a0, star
    li a7, 4
    ecall
    addi t2, t2, 1
    j inner_loop

newline:
    la a0, nl
    li a7, 4
    ecall
    addi t1, t1, 1
    j outer_loop

exit:
    li a7, 10
    ecall
