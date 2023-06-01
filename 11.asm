.data
	mensaje1: .asciiz "la resta es "
	numero1: .word 5
	numero2: .word 4
	
.text
	main:
		# Se trae de la memoria numero 1 y numero 2
		lw $t0, numero1
		lw $t1, numero2
		
		# Se imprime el mensaje
		li $v0, 4
		la $a0, mensaje1
		syscall
		
		# Se hace la operación y se imprime
		# Se carga la operación de imprimir entero
		li $v0, 1
		sub $a0, $t0, $t1
		syscall
		
		li $v0, 10
		syscall