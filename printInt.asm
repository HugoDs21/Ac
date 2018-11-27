.data
	int: .word 19 #Int = word = 32 bits
.text
	#Print Integer
	li $v0, 1
	lw $a0, int
	syscall