    #import "../constants.asm"


BasicUpstart2(main)



main:

    jsr CLEAR
    ldx #65
LOOP:   txa

    jsr OUTPUT
    inx
    cpx #91
    bne LOOP

    rts