	.text
	.globl main
main:
	ori $s0, $zero, 1
	ori $t2, $zero,10

loop:
	beq $s0, $t2, end
	addi, $s0, $s0, 1
	or $a0, $zero, $s0
	li $v0, 1
	syscall #printa um inteiro
	la $a0, pontos
	li $v0, 4 #syscall para imprimir string
	syscall
	la $a0, n
	li $v0, 4 #syscall para imprimir string
	syscall
	ori $t0, $zero, 1
loop2:
	mul $t1, $s0, $t0
	or $a0, $zero, $t1
	li $v0, 1
	syscall #printa um inteiro
	la $a0, n
	li $v0, 4 #syscall para imprimir string
	syscall
	beq $t0, $t2,loop
	addi $t0, $t0, 1
	j loop2
end:
	li $v0,10
	syscall
	.data
n:
	.asciiz "\n"
pontos:
	.asciiz ":"
