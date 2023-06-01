.data
	fin: .asciiz "Fin del programa"
	salto: .asciiz "\n"

.text
	main:
		add $t1, $zero, 5  # t1 = 0 + 5
	
	while:
	
		bgt $t1, 10, exit
		
		jal mostrar
		add $t1, $t1, 1
		j while
	
	mostrar:
		li $v0, 1
		move $a0, $t1
		syscall
		
		li $v0, 4
		la $a0, salto
		syscall
		
		jr $ra
		
	exit:
		li $v0, 4
		la $a0, fin
		syscall
		
		li $v0, 10
		syscall