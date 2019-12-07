.org 0x100
    var_a:
        .word 03
    var_b:
        .word 03
    var_c:
        .word 02
    var_d:
        .word 02
        
.org 0x110
    soma:
        .word 00   

.org 0x000
    LOAD M(var_c)
    ADD M(var_d)
    STOR M(soma)
    LOAD M(var_a)
    ADD M(var_b)
    SUB M(soma)
    STOR M(var_a)
