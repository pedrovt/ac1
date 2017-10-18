# Guião 5, Ex. 3

# Mapa de registos
# i         : $t0
# lista     : $t1
# lista + i : $t2

# p: $t3
# *p: $t4
# lista+Size: $t5

# houveTroca: $t6
# size-1    : $t7


	.data
	.eqv SIZE, 10	#define SIZE 10
	.eqv TRUE, 1	#define TRUE 1
	.eqv FALSE,0	#define FALSE 0		
	.eqv print_int10, 1
	.eqv read_int, 5
	.eqv print_string, 4
strA:	.asciiz	"\nIntroduza um número: "
strB:	.asciiz "\nConteúdo do array:\n"
strC: 	.asciiz "; "
list:	.space 40 	#static int lista[SIZE];
	.align 2
			
	.text
	.globl main 	
	
main:				
				# -------------------------------------------------------------
				# Read array
	li $t0, 0		# i = 0	
while1:	beq $t0, SIZE, endW1	# while (i < size) {
	
	la $a0, strA 		# 	print_string(strA)			
	li $v0, print_string
	syscall
			
	li $v0, read_int	#	 read_int()
	syscall
	
	la $t1, list		# 	$t1 = &list[0]
	sll $t2, $t0, 2
	
	addu $t2, $t2, $t1	# 	$t2 = &list[i]
	sw $v0, ($t2)		# 	lista[i] = read_int();		
														
	addi $t0, $t0, 1	# 	i++
	j while1
endW1: 				# -------------------------------------------------------------
				# Bubble Sort
do:				# do {
	li $t6, FALSE		#	houveTroca = FALSE;
	li $t0, 0		# 	i = 0
	li $t7, SIZE		#	$t7 = size
	subi $t7, $t7, 1	# 	$t7 = $t7 - 1 = size - 1
while:	bge $t0, $t7, endW	#	for (i=0; i < SIZE-1; i++) {
	
				
	ble 			#		if (lista[i] > lista[i+1]) {
				#			aux = lista[i];
				#			lista[i] = lista[i+1];
				#			lista[i+1] = aux;
				#			houveTroca = TRUE;
				#		}
				
endW:				#	}
	beq $t6, TRUE, do  	# } while (houveTroca == TRUE);

				# -------------------------------------------------------------
				# Print array	
	li $v0, print_string	# print_string("\nConteudo do array:\n");
	la $a0, strB
	syscall
	
	la $t3, list		# p = lista
				# # $t2 = lista + size;
	li $t2, SIZE		# $t2 = size
	sll $t2, $t2, 2		# $t2 = $t2 * 4
	addu $t2, $t2, $t3	# $t2 = $t2 + $t0 == size * 4 + list
	
				
									
while2: bge $t3, $t5, endW2	# while (p < lista + SIZE) {
	lw $t4, 0($t3)		#	$t1 = *p
	
	li $v0, print_int10	#	print_int10( *p );
	move $a0, $t4
	syscall
					
	li $v0, print_string	# 	print_string("; ");
	la $a0, strC
	syscall			

	addu $t3, $t3, 4	# 	$t0++ = p++;

	j while2		# }
endW2:	
	jr $ra			# End program	
			