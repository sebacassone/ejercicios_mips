.data
	palabra: .asciiz "Hola Mundo"
	
.text
	main:
	li $v0, 4 # Mostrar un string
	la $a0, palabra
	syscall
	
	li $v0, 10
	syscall