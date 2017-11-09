# --------------------------------
# Guião 7, Ex 3
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# Test of div subroutine
	
	.data
	.eqv print_int10, 1
	.eqv dividendo, 50
	.eqv divisor, 5
	
	.text
	.globl main   
	
main:	
	subiu $sp, $sp, 4	# save $ra
	sw $ra, 0($sp)
	
	li $a0, dividendo	
	li $a1, divisor	
	jal division		# division (dividendo, divisor)
	
	move $a0, $v0		
	li $v0, print_int10
	syscall
	
	jal println
	
	move $a0, $v1
	syscall
	
	lw $ra, 0($sp)		# restore $ra
	addiu $sp, $sp, 4
	
	jr $ra 
