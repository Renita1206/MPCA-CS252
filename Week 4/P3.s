.DATA
    A: .WORD 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
    B: .WORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.TEXT 
    LDR R0, =A 
    LDR R1, =B 
    MOV R2, #3 

LOOP:   LDMIA R0!, {R3-R10}
        STMIA R1!, {R3-R10}
        SUB R2, R2, #1
        CMP R2, #0
        BNE LOOP

        SWI 0X011

.END