; FIND THE SMALLEST ELEMENT IN AN ARRAY OF 32 BIT NUMBERS

.DATA
    A: .WORD 70, 18, 30, 40, 100, 25, 102, 50, 98, 101
    MSG: .ASCIZ "SMALLEST ELEMENT IS "

.TEXT
    LDR R0, =A 
    LDR R1,[R0]
    MOV R4, #0

LOOP:   LDR R2,[R0,#4]!
        CMP R1, R2
        BLT L1
        MOV R1, R2
L1:     ADD R4, R4, #1
        CMP R4, #10
        BNE LOOP

    LDR R0, =MSG
    SWI 0X02
    AND R0, R1, #0X0F0
    MOV R0, R0, LSR #4
    ORR R0, R0, #0x30
    SWI 0X00
    AND R0, R1, #0X0F
    ORR R0, R0, #0X30
    SWI 0X00
    SWI 0X011
        
.END