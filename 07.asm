.data
	mensaje1: .asciiz "Ingresa un número "
	mensaje2: .asciiz "Este es tu número "
	
.text
	main:
		li $v0, 4 # Se imprime un string
		la $a0, mensaje1 # Se asigna el mensaje al registro $a0
		syscall
		
		li $v0, 6 # Se indica que se va a capturar un flotante, $v0 en flotantes y en doubles por defecto se guarda en f0
		syscall
	
		li $v0, 4 # Se imprime un string
		la $a0, mensaje2 # Se asigna el mensaje al registro $a0
		syscall
		
		li $v0, 2 # Se va a imprimir un flotante
		add.s $f12, $f0, $f1 # No existe una palabra reservada para mover flotantes si que se usa la suma para flotantes add.s
		# Por defeto, f1 tiene cero
		syscall
		
		li $v0, 10 # Carga el valor 10 al registro $v0 para indicarle que se terminará la ejecución del programa
		syscall