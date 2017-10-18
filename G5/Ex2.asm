# Guião 5, Ex. 2

# Mapa de registos
# p: $t0
# *p: $t1
# lista+Size: $t2

	.data
strA:	.asciiz "\nConteúdo do array:\n"
strB: 	.asciiz "; "
list:   .word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15 # static int lista[]={8, -4, 3, 5, 124, -15, 87, 9, 27, 15};
	.eqv print_int10, 1
	.eqv print_string, 4
	.eqv SIZE, 10 				   #define SIZE 10
	
	.text
	.globl main
	
main:	li $v0, print_string	# print_string("\nConteudo do array:\n");
	la $a0, strA
	syscall
	
	la $t0, list		# p = lista
				# # $t2 = lista + size;
	li $t2, SIZE		# $t2 = size
	sll $t2, $t2, 2		# $t2 = $t2 * 4
	addu $t2, $t2, $t0	# $t2 = $t2 + $t0 == size * 4 + list
				
while:  bge $t0, $t2, endW	# while (p < lista + SIZE) {
	lw $t1, 0($t0)		#	$t1 = *p
	
	li $v0, print_int10	#	print_int10( *p );
	move $a0, $t1
	syscall
					
	li $v0, print_string	# 	print_string("; ");
	la $a0, strB
	syscall			

	addu $t0, $t0, 4	# 	$t0++ = p++;

	j while			# }
endW:	
	jr $ra			# End program

	