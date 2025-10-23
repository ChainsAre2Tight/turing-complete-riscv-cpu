.text
lui s1, %hi(keyboard)
addi s1, s1, %lo(keyboard)
lw s1, (s1)
lui s2, %hi(tty)
addi s2, s2, %lo(tty)
li s3, 0

loop:
lb t1, (s1)
add t2, s2, s3
sb t1, (t2)
addi s3, s3, 1
jal loop


.data
keyboard:
	.word 0xff0000f0
.align 3
tty:
	.byte 0