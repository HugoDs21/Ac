.data

.text
	addi $s0, $zero, 25
	addi $s1, $zero, 4
	
	mult $s0, $s1
	
	mflo $t0
	
	li $v0, 1
	add $a0, $t0, $zero
	syscall