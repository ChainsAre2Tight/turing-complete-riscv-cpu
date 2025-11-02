.text
j _start


adder:
addi s1, s1, 1
ret
addi s2, s2, 2


_start:
call adder
call adder
call adder
ecall