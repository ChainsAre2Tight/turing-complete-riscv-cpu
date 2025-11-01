.text
lui s1, %hi(video)
addi s1, s1, %lo(video)
lw s1, (s1)

#li t1, 0
#outer:


#li t2, 0
#inner:

lui t3, 0xfffff
addi t3, t3, 3
sw t3, (s1)

lui t3, 0xfffff
addi t3, t3, 1
sw t3, (s1)

lui t3, 0xfffff
addi t3, t3, 2
sw t3, (s1)

.data
video:
	.word 4278190096