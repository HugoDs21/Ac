#Formato R
add $t0, $s1, $s2 # t0 = s1 + s2
add $t1, $s3, $s4 # t1 = s3 + s4
sub $s0, $t0, $t1 # s0 = t0 - t1


lw $t0, 32($s3) #I load word
add $t0, $s2, $t0 #R
sw $t0, 48($s3) #I load word

	bne $s3, $s4, else #I
	add $s0, $s1, $s2 #R
	j exit #j
else: 	sub $s0, $s1, $s2 #R
exit:	...

loop:	add $t1, $s3, $s3
	add $t1, $t1, $t1
	add $t1, $t1, $s6
	lw $t0, 0($t1)
	bne $t0, $s5, exit
	add $s3, $s3, $s4
	j loop
exit: 	...

proc: 	addiu $sp, $sp, -12
	sw $t1, 8($sp)
	sw $t0, 4($sp)
	sw $s0, 0($sp)
	add $t0, $a0, $a1
	add $t1, $a2, $a3
	sub $s0, $t0, $t1
	add $v0, $s0, $zero
	lw $s0, 0($sp)
	lw $t0, 4($sp)
	lw $t1, 8($sp)
	addiu $sp, $sp, 12
	jr $ra
	
	
	
	
	
	
