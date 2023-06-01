.data
	mensaje1: .asciiz "Di tu nombre "
	mensaje2: .asciiz "hola "
	name: .space 20 # Para guardar un string de largo 20
	
.text
	main:
		li $v0, 4
		la $a0, mensaje1
		syscall
		
		li $v0, 8 # Para capturar un string
		la $a0, name # Se le da como argumento name para que lo guarde allí
		li $a1, 20 # Hay que indicar el largo del string que se va a capturar
		syscall
		
		# Se imprime el mensaje2
		li $v0, 4
		la $a0, mensaje2
		syscall
		
		# Se imprime el string
		li $v0, 4
		la $a0, name
		syscall
		
		# Para terminar la función
		li $v0, 10
		syscall