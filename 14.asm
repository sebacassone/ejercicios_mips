.data

.text
	main:
		add $t1, $zero, 5 # t1 = 0 + 5
		add $t2, $zero, 4 # t2 = 0 + 4
		
		jal suma
		
		li $v0, 10
		syscall
		
	suma:
		li $v0, 1
		add $a0, $t1, $t2 # a0 = t1 + t2
		syscall
		
		jr $ra # Tiene que ver con volver a donde estaba el pc anteriormente a la llamada de la función