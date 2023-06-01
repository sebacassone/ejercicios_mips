.data
	mensaje1: .asciiz "Ingresa tu numero "
	mensaje2: .asciiz "Este es tu numero "
	
.text
	main:
		li $v0, 4 # Para imrpimir un string en pantalla
		la $a0, mensaje1 # Se asigna mensaje1 al registro $a0
		syscall # Se llama a la función
		
		li $v0, 5 # Para capturar un entero
		syscall # Se invoca la función
		move $t0, $v0 # Se rescata este entero
		
		li $v0, 4 # Se indica que se va a imprimir un string
		la $a0, mensaje2 # Se asgina mensaje2 al registro $a0
		syscall
		
		li $v0, 1 # Indicamos que vamos a imprimir un entero
		move $a0, $t0
		syscall
		
		li $v0, 10
		syscall
		