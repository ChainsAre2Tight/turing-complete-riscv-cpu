addi x1, x0, 1
addi x2, x0, 2
sw x1, 2(x2)
# last 4 bytes of first line should be 0x1110
sb x1, 28(x0)
sb x1, 29(x0)
sb x1, 30(x0)
# should evict line and request a new one
sh x2, 14(x0)
# bytes 28-32 should be 0x1110
sb x2, 287(x0)
# first line should have 2 at the end
