.org 0x100
    salario:
        .word 1400 
    percentual:
        .word 15
    aumento:
        .word 00 
    novo_salario:
        .word 00
.org 0x110
    cem:
        .word 100

.org 0x000
    LOAD MQ, M(percentual)
    MUL M(salario)
    LOAD MQ
    DIV M(cem)
    LOAD MQ
    STOR M(aumento)
    
    LOAD M(aumento)
    ADD M(salario)
    STOR M(novo_salario)
    
    
