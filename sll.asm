.data

.text
	# 4 x 4
	addi $s0, $zero, 4
	
	sll $t0, $s0, 2     # 4 = 2^(2)
	
	li $v0, 1
	add $a0, $t0, $zero
	syscall