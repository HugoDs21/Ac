.data
	num1: .word 20
	num2: .word 8
.text
	lw $t0, num1($zero)
	lw $t1, num2($zero)
	sub $t2, $t0, $t1
	
	li $v0, 1
	move $a0, $t2 #OU
	add $a0, $t2, $zero
	syscall