.data
prompt: .asciz "Enter day number (1-7): "
error:  .asciz "Error: Invalid day number!\n"

day1: .asciz "Mantaha\n"
day2: .asciz "Labobeli\n"
day3: .asciz "Laboraro\n"
day4: .asciz "Labone\n"
day5: .asciz "Labohlano\n"
day6: .asciz "Moqebelo\n"
day7: .asciz "Sontaha\n"

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
    blt t0, t1, invalid
    li t1, 7
    bgt t0, t1, invalid

    li t1, 1
    beq t0, t1, d1
    li t1, 2
    beq t0, t1, d2
    li t1, 3
    beq t0, t1, d3
    li t1, 4
    beq t0, t1, d4
    li t1, 5
    beq t0, t1, d5
    li t1, 6
    beq t0, t1, d6
    li t1, 7
    beq t0, t1, d7

d1: la a0, day1
    li a7, 4
    ecall
    j exit
d2: la a0, day2
    li a7, 4
    ecall
    j exit
d3: la a0, day3
    li a7, 4
    ecall
    j exit
d4: la a0, day4
    li a7, 4
    ecall
    j exit
d5: la a0, day5
    li a7, 4
    ecall
    j exit
d6: la a0, day6
    li a7, 4
    ecall
    j exit
d7: la a0, day7
    li a7, 4
    ecall
    j exit

invalid:
    la a0, error
    li a7, 4
    ecall

exit:
    li a7, 10
    ecall
