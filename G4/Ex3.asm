# Guião 4, Ex 3
# Pedro Teixeira, MIECT, 84715

# ---------------------------------------------------

# Registers Map
# p 	   : $t0
# p_ultimo : $t1
# *p	   : $t2
# soma	   : $t3

	.data	
	.eqv SIZE, 4				# define SIZE 4
	.eqv print_int10, 1

array:	.word 7692, 23, 5, 234
	.text
	.globl main	
			
main:						# void main (void) {
	la  $t0, array				#	p = array; 		
	ori $t1, $0, SIZE			# 	p_ultimo = array + size;
	sll $t1, $t1, 2				 	

	ori $t3, $0, 0				# 	int soma = 0;
	
	lb  $t2, ($t1)	
while:  beq $t2, '\0', endLoop 			# 	while( p < pultimo ) {	
	lb $t4, ($t2)				#       	soma = soma + (*p);
	add $t3, $t3, $t4			
	addi $t0, $t0, 1			#		p++
						# 	}
	j while
endLoop:ori $v0, $0, print_int10		# 	print_int10(soma);
	or  $a0, $0, $t3
	syscall
	  
	jr $ra					# 	}
