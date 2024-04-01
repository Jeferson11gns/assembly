.org 0x100
    base:
        .word 12
    altura:
        .word 08
        
.org 0x110
    dois:
        .word 02
    res:
        .word 00

.org 0x000
    LOAD MQ, M(base)
    MUL M(altura)
    LOAD MQ
    DIV M(dois)
    LOAD MQ
    STOR M(res)
