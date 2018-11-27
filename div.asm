.data 

.text
	add $t0, $zero, 30
	add $t1, $zero, 5
	
	#Divisao pondo o resultado num registo
	div $s0, $t0, $t1
	
	li $v0, 1
	add $a0, $s0, $zero
	syscall
	
	#Divisao separando o resultado entre quociente e resto
	
	div $t0, $t1
	mflo $s1 #Quociente
	mfhi $s2 #Resto