.org 0x100
    nota1:
        .word 02
    nota2:
        .word 02
    nota3:
        .word 02
    peso1:
        .word 02
    peso2:
        .word 02
    peso3:
        .word 03
        
.org 0x110
    soma_pesos:
        .word 00 
    soma_notas:
        .word 00
    mult_nota1:
        .word 00
    mult_nota2:
        .word 00
    mult_nota3:
        .word 00
    res:
        .word 00
        
.org 0x000
    LOAD MQ, M(nota1)
    MUL M(peso1)
    LOAD MQ
    STOR M(mult_nota1)
    
    LOAD MQ, M(nota2)
    MUL M(peso2)
    LOAD MQ
    STOR M(mult_nota2)
    
    LOAD MQ, M(nota3)
    MUL M(peso3)
    LOAD MQ
    STOR M(mult_nota3)
    
    LOAD M(peso1)
    ADD M(peso2)
    ADD M(peso3)
    STOR M(soma_pesos)
    
    LOAD M(mult_nota1)
    ADD M(mult_nota2)
    ADD M(mult_nota3)
    STOR M(soma_notas)
    
    LOAD M(soma_notas)
    DIV M(soma_pesos)
    LOAD MQ
    STOR M(res)
    
    
