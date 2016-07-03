.code16
.org 0x7c00
start:
# set display mode
        mov $0x0013, %ax   # 320x200, 8-bit colour, linear memory
        int $0x10
 
        push $0xa000
        pop %ds
 
setup:
        mov $0, %di
        mov $33,%ah
        mov $20, %bh
draw_gradient:
        movb %ah, (%di)
        inc %di
        dec %bh
        cmp $0,%bh
        jne carry_on
increase_colour:
        mov $20, %bh
        inc %ah
        cmp $49, %ah
        je reset_col
carry_on:
        cmp $64000, %di
        jne draw_gradient
reset_col:
        movb $33 , %ah
        jmp carry_on
.org (start+510)
        .word 0xAA55
