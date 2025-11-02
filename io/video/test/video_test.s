.text
j _start

draw_pixel:
# a0 - addr
# a1 - x
# a2 - y
# a3 - r
# a4 - g
# a5 - b
andi a1, a1, 127
andi a2, a2, 127
andi a3, a3, 0xFC
andi a4, a4, 0xFC
andi a5, a5, 0xFC
slli a1, a1, 2
slli a2, a2, 8
slli a3, a3, 12
slli a4, a4, 18
slli a5, a5, 24 
addi t1, a1, 1
add t1, t1, a2
add t1, t1, a3
add t1, t1, a4
add t1, t1, a5
sw t1, (a0)
ret

flush_pixels:
# a0 - addr
li t1, 2
sw t1, (a0)
ret

set_white:
li a3, 0xff
li a4, 0xff
li a5, 0xff
j skip

_start:
lui s1, %hi(video)
addi s1, s1, %lo(video)
lw s1, (s1)
li s4, 64
li s5, 48

li s2, 0
outer:

li s3, 0
inner:

addi a0, s1, 0
addi a1, s2, 0
addi a2, s3, 0

andi t1, s2, 1
beqz t1, set_white

li a3, 0x0
li a4, 0x0
li a5, 0x0

skip:
call draw_pixel

addi s3, s3, 1
blt s3, s5, inner

addi s2, s2, 1
blt s2, s4, outer



#addi a0, s1, 0
#li a1, 0
#li a2, 0
#li a3, 0xff
#li a4, 0xff
#li a5, 0xff
#call draw_pixel
#li a1, 1
#li a2, 1
#li a3, 0xff
#li a4, 0x00
#li a5, 0x00
#call draw_pixel
#li a1, 2
#li a2, 2
#li a3, 0x00
#li a4, 0xff
#li a5, 0x00
#call draw_pixel
#li a1, 3
#li a2, 3
#li a3, 0x00
#li a4, 0x00
#li a5, 0xff
#call draw_pixel

addi a0, s1, 0
call flush_pixels

ecall

.data
video:
	.word 4278190096
