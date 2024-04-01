.org 0x100
    var_x:
        .word 06
    var_b:
        .word 02

        
.org 0x110
    soma:
        .word 00  
    sub:
        .word 00
    divi:
        .word 00
    resto:
        .word 00
        
.org 0x000
    LOAD M(var_x)
    ADD M(var_b)
    STOR M(soma)
    
    LOAD M(var_x)
    SUB M(var_b)
    STOR M(sub)

    LOAD M(var_x)
    DIV M(var_b)
    STOR M(resto)
    
    LOAD MQ
    STOR M(divi)
