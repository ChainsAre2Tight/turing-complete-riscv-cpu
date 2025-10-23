.text
lui t1, %hi(sound)
addi t1, t1, %lo(sound)
lw s1, (t1)

lui s2, %hi(notes)
addi s2, s2, %lo(notes)

li s3, 16
li t1, 0

loop:
add t2, s2, t1
lbu t2, (t2)
slli t2, t2, 8
addi t2, t2, 1
sh t2, (s1)
addi t1, t1, 1
blt t1, s3, loop

ecall

.data
sound:
	.word 0xff000008
notes:
	.byte 1 1
	.byte 1 1
	.byte 1 3
	.byte 1 1
	.byte 1 1
	.byte 1 5
	.byte 1 1
	.byte 1 1
	.byte 1 2
	.byte 1 1
	.byte 1 1
	.byte 1 1
	.byte 1 10
	.byte 1 1
	.byte 1 1
	.byte 1 1