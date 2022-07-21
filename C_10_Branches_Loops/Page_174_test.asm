#import "../constants.asm"

BasicUpstart2(enter)

 * =$c000

enter:

    jsr CLEAR
    ldx #1          // clear x reg
    ldy #0

L1: txa             // start of loop ,then transfer X to A
    sta 1514,x
    inx
    cpx #10
    bne L1
    lda #0
L2: tya 
    sta 55786,y
    iny
    cpy #10
    bne L2
 

    rts