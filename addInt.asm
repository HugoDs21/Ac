.data
	num1: .word 15
	num2: .word 10
.text
	lw $t0, num1($zero)
	lw $t1, num2($zero)
	add $s2, $s0, $s1
	
	li $v0, 1 #Print Int
	add $t2, $t1, $t0
	syscall
	