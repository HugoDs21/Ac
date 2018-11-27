.data 
	msg: .asciiz "O Hugo é fixe\n"
.text

	main:
	
		jal displaymsg
	
	li $v0, 10  #Dizer ao sistema que o programa acabou
	syscall
	
	displaymsg:
	li $v0, 4
	la $a0, msg
	syscall
	
	jr $ra