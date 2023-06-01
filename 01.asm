.text
.globl main

main:
    li $a0, 5     # Pasar el primer argumento a la función en $a0
    li $a1, 3     # Pasar el segundo argumento a la función en $a1
    jal sumar     # Llamar a la función "sumar"
    
    # Obtener el resultado de la función desde $v0
    move $t0, $v0
    
    # Obtener el resultado adicional desde $v1
    move $t1, $v1
    
    # Imprimir el resultado y el resultado adicional
    li $v0, 1     # Cargar el código 1 para imprimir un entero
    move $a0, $t0 # Pasar el resultado a imprimir en $a0
    syscall
    
    move $a0, $t1 # Pasar el resultado adicional a imprimir en $a0
    syscall
    
    # Terminar el programa
    li $v0, 10    # Cargar el código 10 para terminar el programa
    syscall


# Definición de la función "sumar"
sumar:
    add $v0, $a0, $a1    # Realizar la suma y guardar el resultado en $v0
    add $v1, $a0, $a1    # Calcular un resultado adicional y guardar en $v1
    jr $ra               # Volver a la instrucción de retorno