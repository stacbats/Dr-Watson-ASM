// Chapter 3  Addressing and Screen Outputting:
// Working on using the X & Y registers to manipulate and Animate our diamond
// as in the previous lesson however we wil add a loop to slow it down

// NOTE In the book STAY and STAX refers to sta (address),y or , x

BasicUpstart2(main)

* = $828 "Start Address"   // Poke 2088

main:
    ldy #0          // 2 cycles:
    lda #90         // 2 cycle:           // set up the diamond
    sta 900         // 4 cycle:            // STORE IT in 900
    lda #1          // 2 cycle:             // Make them White
    sta 901         // 4 cycle:          // STORE IT IN 901
    lda #32         // 2 cycle:        // set up the blank
    sta 902         // 4 cycle:        // STORE IT IN 902
    lda 900         // 4 cycle:
S1: sta 1024,y      // 5 cycle:
    lda 901         // 4 cycle:
    sta 55296,y     // 5 cycle:
    sty 903         // 4 cycle:

L2: ldy L1          // 4 cycles:LOOP 1 = OUTER LOOP 15  (loop forward)
L3: ldx L2          // 4 cycles:LOOP 2 = INNER LOOP 250  (loop back)

L4: dex             // 2 cycle:
    bne L3          // 2 cycles:LOOP 3 = Count down 250 (253)
    dey             // 2 cycle:
    bne L4          // 2 cycle: LOOP 4: = Count down 15 (248)

L1: ldy 903         // 4 cycle:
    lda 902         // 4 cycle:
    sta 1024, y     // 3 cycle:
    iny             // 2 cycle:
    bne S1          // 2 cycle: LOOP 5 = Keep looping until done. Branch back 219 
    
    rts