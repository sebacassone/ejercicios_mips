.data
	numero: .double 5.24
	
.text
	main:
	
	li $v0, 3 # Para imprimir un número double (similar a C)
	ldc1 $f12, numero # Para cargar en memoria un número double
	syscall
	
	li $v0, 10
	syscall