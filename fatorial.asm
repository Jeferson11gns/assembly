.org 0x100
    var_n:
        .word 03
    aux:
        .word 00 
.org 0x110
    cont:
        .word 01
    fat:
        .word 01
    um:
        .word 01
    laco:
        LOAD MQ, M(aux)
        MUL M(fat)
        LOAD MQ
        STOR M(fat)
        
        LOAD M(aux)
        SUB M(um)
        STOR M(aux)
        
        LOAD M(cont)
        ADD M(um)
        STOR M(cont)
        
        LOAD M(var_n)
        SUB M(cont)
        
        JUMP+ M(laco)
        
.org 0x000
    LOAD M(var_n)
    STOR M(aux)
    
    JUMP M(laco)
