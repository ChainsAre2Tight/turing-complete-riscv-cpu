.text
lui s1, %hi(table)
addi s1, s1, %lo(table)

lui s3, %hi(results)
addi s3, s3, %lo(results)

li s2, 255
li t1, 1

outer:
addi t1, t1, 1
add t2, s1, t1
lbu t3, 0(t2)
beqz t3, skip

addi t4, t1, 0

inner:
add t4, t4, t1
add t2, s1, t4 
sb x0, (t2)
blt t4, s2, inner

skip:
blt t1, s2, outer

li t1, 0
li t2, 0

output_loop:
addi t1, t1, 1
add t3, s1, t1
lbu t4, (t3)
beqz t4, skip2

add t3, s3, t2
sb t1, (t3)
addi t2, t2, 1

skip2:
blt t1, s2, output_loop



ecall


.data
.align 2
table:
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
	.byte 1 1 1 1 1 1 1 1
.align 2
results:
	.byte 69


