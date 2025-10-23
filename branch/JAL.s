loop:
addi x1, x1, 1
jal x4, skip
addi x2, x2, 1
skip:
jal x5, loop
addi x3, x3, 1