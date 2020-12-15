	.text
	.globl main
main:
	li $v0, 5
	syscall # lê um inteiro
	slt $t1,$v0, $zero
	bne $t1,$zero,end
	or $a0, $zero,$v0
	jal fibonacci
	or $a0, $zero, $t1
	li $v0, 1 #printa o numero
	syscall 
	la $a0, n
	li $v0, 4#syscall para imprimir string
	syscall
	j main	
	
end:
	li $v0,10
	syscall

fibonacci:
	ori $t1, $zero, 1 
	ori $t2, $zero, 0
loop:
	addi $a0, $a0, -1
	beq $a0, $zero,endloop
	add $t3, $t1, $t2
	or $t2, $zero, $t1
	or $t1, $zero, $t3
	j loop
endloop:
	jr $ra

	.data
n:
	.asciiz "\n"



