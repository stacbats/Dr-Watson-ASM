// Chapter 3  Addressing and Screen Outputting:
// Working on using the X & Y registers to manipulate and Animate our diamond
// as in the previous lesson however we wil add a loop to slow it down

// NOTE In the book STAY and STAX refers to sta (address),y or , x

BasicUpstart2(main)

* = $828 "Start Address"   // Poke 2088

main:
    ldy #0          // 2 bytes:
    lda #90         // 2 bytes:           // set up the diamond
    sta 900         // 3 bytes:            // STORE IT in 900
    lda #1          // 2 bytes:             // Make them White
    sta 901         // 3 bytes:          // STORE IT IN 901
    lda #32         // 2 bytes:        // set up the blank
    sta 902         // 3 bytes:        // STORE IT IN 902
S1: lda 900         // 4 bytes:
    sta 1024,y      // 3 bytes:
    lda 901         // 3 bytes:
    sta 55296,y     // 3 bytes:
    sty 903         // 3 bytes:

    ldy #15          // 3 bytes:LOOP 1 = OUTER LOOP 15  (loop forward)
L2: ldx #250         // 3 bytes:LOOP 2 = INNER LOOP 250  (loop back)

L1: dex             // 1 byte:
    bne L1          // 2 bytes:LOOP 3 = Count down 250 (253)SS
    dey             // 1 bytes:
    bne L2          // 2 bytes: LOOP 4: = Count down 15 (248)

    ldy 903         // 3 bytes:
    lda 902         // 3 bytes:
    sta 1024, y     // 3 bytes:
    iny             // 1 bytes:
   
    bne S1          // 2 bytes: LOOP 5 = Keep looping until done. Branch back 219 
    
    rts  