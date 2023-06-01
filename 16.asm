.data
    mensaje1: .asciiz "Es mayor"
    mensaje2: .asciiz "Es menor"

.text
    main:
   	add $t1, $zero, 5 # t1 = 0 + 5
    	add $t2, $zero, 4 # t2 = 0 + 4
        
   	bgt $t1, $t2, mayor # Si t1 == t2 te lleva a la función iguales
    	blt $t1, $t2, menor # Si t1 != t2 te lleva a la función diferentes
    	   
    mayor:
    	li $v0, 4
    	la $a0, mensaje1
    	syscall
    
    	jal fin
    	
    menor:
   	li $v0, 4
    	la $a0, mensaje2
    	syscall
    
    	jal fin
    
    fin:
    	li $v0, 10
    	syscall
    	
    	
        