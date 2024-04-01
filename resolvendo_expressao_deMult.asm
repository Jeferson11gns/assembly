.org 0x100
    var_a:
        .word 02
    var_b:
        .word 02
    var_c:
        .word 01
    var_d:
        .word 02
        
.org 0x110
    soma1:
        .word 00   
    soma2:
        .word 00
    
        
.org 0x000
    LOAD M(var_c)
    ADD M(var_d)
    STOR M(soma1)
    
    LOAD M(var_a)
    ADD M(var_b)
    STOR M(soma2)
    
    LOAD MQ, M(soma2)
    MUL M(soma1)
    LOAD MQ
    STOR M(var_a)
