.data
	newLine: .asciiz "\n"
.text
	main:
		addi $s0, $zero, 10
		
		jal increaseReg
		
		#Print Line
		li $v0, 4
		la $a0, newLine
		syscall
		
		#Print s0
		li $v0, 1
		move $a0, $s0
		syscall
	
		li $v0, 10
		syscall
	
	increaseReg:
		#Alocar 4 bytes na stack (sempre de 4 em 4 )
		addi $sp, $sp, -4
		sw $s0, 0($sp) #guardar o valor atual na pos 0 da stack
		
		addi $s0, $s0, 5 #aumentar a s0
		#Print novo valor
		li $v0, 1
		move $a0, $s0
		syscall
		
		lw $s0, 0($sp) #voltar ao valor antigo de s0
		
		jr $ra
	