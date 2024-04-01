.org 0x100
    raio:
        .word 10 
    area:
        .word 00 
    perimetro:
        .word 00

.org 0x110
    pi:
        .word 03
    dois:
        .word 02
        
.org 0x000
    LOAD MQ, M(raio)
    MUL M(raio)
    MUL M(pi)
    LOAD MQ
    STOR M(area)
    
    LOAD MQ, M(raio)
    MUL M(pi)
    MUL M(dois)
    LOAD MQ
    STOR M(perimetro)
