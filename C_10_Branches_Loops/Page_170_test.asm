    #import "../constants.asm"


BasicUpstart2(main)



main:
    BORDER_Update(0)
    


    jsr CLEAR
    ldx #0
    ldy #1
LOOP:   tya

    sta 55296+320,x
    txa
    sta 1024+320,x
    inx
    cpx #27
    bne LOOP
    rts
 

    rts