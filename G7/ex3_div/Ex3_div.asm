# --------------------------------
# Guião 7, Ex 3
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# div    
# Implementação do algoritmo de divisão de inteiros apresentado nas aulas
# teóricas (versão otimizada), para operandos de 16 bits.
# param   $a0: unsigned int dividendo
# param   $a1: unsigned int divisor
# returns $v0: resto
# returns $v1: quociente
				
# Map of registers:
# $a0 : dividendo
# $a1 : divisor
# $t0 : i
# $t1 : bit
# $v0 : quociente
# $v1 : resto
	
	.text
	.globl division
							
division:			# unsigned int div(unsigned int dividendo, unsigned int divisor) {
		
				# 	Terminal subroutine : no need to save $ra
				# 	int i, bit, quociente, resto;
				
	sll $a1, $a1, 16	# 	divisor = divisor << 16;
	andi $a0, $a0, 0xFFFF   # 	dividendo = (dividendo & 0xFFFF) << 1;
	sll $a1, $a1, 1

	li $t0, 0		#	i = 0
for:	bge $t0, 16, endFor	# 	for(i=0; i < 16; i++) {
	li $t1, 0		# 		bit = 0;
if:	blt $a0, $a1, endIf	# 		if(dividendo >= divisor) {
	sub $a0, $a0, $a1	# 			dividendo = dividendo - divisor;
	li $t1, 1		# 			bit = 1;
endIf:				# 		}
	sll $a0, $a0, 1		# 		dividendo = (dividendo << 1) | bit;
	or  $a0, $a0, $t1
	
	addi $t0, $t0, 1	#	i++
	j for
endFor:				# 	}
	srl $v0, $a0, 1		# 	resto = (dividendo >> 1) & 0xFFFF0000;
	ori $v0, $t3, 0xFFFF0000
				
	ori $v1, $a0, 0xFFFF 	# 	quociente = dividendo & 0xFFFF;
	
	# already in $v0, $v1	# 	return (resto | quociente);
	
	jr $ra			# }