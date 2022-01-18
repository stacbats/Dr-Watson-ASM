// Chapter 3  Addressing and Screen Outputting:
// Working on using the X & Y registers to manipulate and Animate

BasicUpstart2(main)



* = $828 "Start Address"   // Poke 2088

main:
    ldx #0
    ldy #32
    sty 900
    lda #90
    sta 901
L1: sta 1024,x
    lda #1
    sta 55296,x
    tya
    sta 1023,x
    lda 901
    inx
    bne L1


    rts