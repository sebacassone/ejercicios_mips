.data
    mensaje1: .asciiz "Son iguales"
    mensaje2: .asciiz "Son diferentes"

.text
    main:
   	add $t1, $zero, 5 # t1 = 0 + 5
    	add $t2, $zero, 4 # t2 = 0 + 4
        
   	beq $t1, $t2, iguales # Si t1 == t2 te lleva a la función iguales
    	bne $t1, $t2, diferentes # Si t1 != t2 te lleva a la función diferentes
    	   
    iguales:
    	li $v0, 4
    	la $a0, mensaje1
    	syscall
    
    	jal fin
    	
    diferentes:
   	li $v0, 4
    	la $a0, mensaje2
    	syscall
    
    	jal fin
    
    fin:
    	li $v0, 10
    	syscall
    	
    	
        