// Chapter 3  Addressing and Screen Outputting:
// Working on using the X & Y registers to manipulate and Animate our diamond
// as in the previous lesson however we wil add a loop to slow it down

// NOTE In the book STAY and STAX refers to sta (address),y or , x

BasicUpstart2(main)

* = $828 "Start Address"   // Poke 2088

main:
    ldy #0
    lda #90             // set up the diamond
    sta 900             // STORE IT in 900
    lda #1              // Make them White
    sta 901             // STORE IT IN 901
    lda #32             // set up the blank
    sta 902             // STORE IT IN 902
    // ** the beging of the delay loop **
    ldx 250             // start of our timer delay
L1: lda 900
    sta 1024,y
    lda 901
    sta 55296,y
L2: dex                 // delay
    bne L2
    lda 902
    sta 1024,y
    iny
    bne L1

    rts

  