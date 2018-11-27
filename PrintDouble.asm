.data
	double: .double 7.202
	zero:   .double 0.0   #Nao existe $zero para doubles ent temos que criar para add a um double e dar o mesmo double
.text
	ldc1 $f2, double
	ldc1 $f0, zero
	
	li $v0, 3
	add.d $f12, $f2, $f0
	syscall