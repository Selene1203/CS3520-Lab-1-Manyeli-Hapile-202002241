.data
prompt_grain: .asciz "Enter litres of grain: "
mak:         .asciz "Makopokopo (20L): "
rem:         .asciz "Remaining litres: \n"

prompt_cattle: .asciz "Enter number of cattle: "
not_enough:    .asciz "Not enough for bohali\n"
small:         .asciz "Small herd\n"
wealthy:       .asciz "Wealthy cattle owner\n"

.text
.globl _start
_start:
    # Grain Counting
    la a0, prompt_grain
    li a7, 4
    ecall

    li a7, 5
    ecall
    mv t0, a0

    li t1, 20
    div t2, t0, t1
    rem t3, t0, t1

    la a0, mak
    li a7, 4
    ecall
    mv a0, t2
    li a7, 1
    ecall
    la a0, rem
    li a7, 4
    ecall
    mv a0, t3
    li a7, 1
    ecall

    # Cattle Wealth
    la a0, prompt_cattle
    li a7, 4
    ecall

    li a7, 5
    ecall
    mv t0, a0

    li t1, 8
    blt t0, t1, not_enough_label

    li t1, 30
    blt t0, t1, small_label

    j wealthy_label

not_enough_label:
    la a0, not_enough
    li a7, 4
    ecall
    j exit

small_label:
    la a0, small
    li a7, 4
    ecall

    wealthy_label:
    la a0, wealthy
    li a7, 4
    ecall

exit:
    li a7, 10
    ecall
    j exit

wealthy_label:
    la a0, wealthy
    li a7, 4
    ecall

exit:
    li a7, 10
    ecall
