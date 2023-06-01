.data
	flotante: .float 5.5
	
.text
	main:
	
	li $v0, 2 # Para cargar en memoria un flotante
	lwc1 $f12, flotante # Para cargar en memoria un número flotante
	syscall
	
	li $v0, 10
	syscall