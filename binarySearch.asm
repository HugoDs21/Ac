#mid = t0
#max = s1
#min = s2
#x = s4
.data
array: .asciiz "2,3,4,10,40"

.text

_main:
	la $a0, array
	addi $s3, $zero, 2
	addi $s1, $zero, 4
	addi $s2, $zero, 0
	bge $s1, $s2, _loop
_loop:
	sub $t1, $s1, $s2
	div $t2, $t1, $s3
	add $t0, $s1, $t2
	
_Array:
	lb      $t0, 0($a0)
	beq 	$
	addiu   $v0, $v0, 1
	addiu   $a0, $a0, 1
	j       _Array