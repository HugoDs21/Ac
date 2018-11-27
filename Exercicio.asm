.data
msg:   .asciiz  "result is: "
str:   .asciiz  "abracadabra"
.text
_main:
la      $a0, str
jal     _proc
add     $s0, $v0, $zero
la      $a0, msg
addiu   $v0, $zero, 4
syscall
add     $a0, $s0, $zero
addiu   $v0, $zero, 1
syscall
addiu   $v0, $zero, 10
syscall
_proc:
addiu   $v0, $zero, 0
_loop:
lb      $t0, 0($a0)
beqz    $t0, _exit
addiu   $v0, $v0, 1
addiu   $a0, $a0, 1
j       _loop
_exit:
jr      $ra