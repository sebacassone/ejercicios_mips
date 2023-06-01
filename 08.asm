.data
	mensaje1: .asciiz "Ingresa un número "
	mensaje2: .asciiz "Este es tu número "
	
.text
	main:
		li $v0, 4
		la $a0, mensaje1
		syscall
		
		li $v0, 7 # Capturar un número double, solo permite sumar con f's pares (f0, f2, f4, f6). Por defecto se guarda en f0
		syscall
	
		li $v0, 4
		la $a0, mensaje2
		syscall
		
		li $v0, 3
		add.d $f12, $f2, $f0
		syscall 
	
		li $v0, 10
		syscall