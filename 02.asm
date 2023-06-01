.data
	numero: .word 5
	
.text
	main:
	
	li $v0, 1 # Para mostrar un entero
	lw $a0, numero # Buscamos en memoria numero
	syscall
	
	
	
	li $v0, 10
	syscall