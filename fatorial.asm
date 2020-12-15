	.text
	.globl main
main:
	li $v0, 5
	syscall # lê um inteiro
	
	or $s0, $zero,$v0
	addi $t1,$s0,-1
loop:
	mult $s0, $t1
	mflo $s0 #move de lo para $s0 o resultado da multiplicaçao
	addi $t1,$t1, -1
	bne $zero, $t1, loop
end:
	li $v0,10
	syscall