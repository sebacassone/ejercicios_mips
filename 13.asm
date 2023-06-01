.data
	mensaje1: .asciiz "la division es "
	mensaje2: .asciiz "\n"
	numero1: .word 11
	numero2: .word 5
	
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
		div $a0, $t0, $t1 # Para dividir
		syscall
		
		li $v0, 4
		la $a0, mensaje2
		syscall
		
		
		# Para el resto
		mfhi $t7 # Obtiene el resto de la división anterior
		li $v0, 1
		move $a0, $t7
		syscall
		
		li $v0, 10
		syscall