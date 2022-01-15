BasicUpstart2(main)
 
.const SceenMem = $0400
.const ColorMem = $d800


* = $0828 "Start Address"   // 49152

main:
// Exercise 1.1  Put A into top left and colour
    // lda #1
    // sta $0400
    // sta $d800

    // rts

// Exercise 1.2 Put Your Name into top left & Color
    lda #19
    ldx #1
    sta SceenMem
    stx ColorMem
    lda #20
    sta SceenMem+1
    stx ColorMem+1
    lda #1
    sta SceenMem+2
    stx ColorMem+2
    lda #3
    sta SceenMem+3
    stx ColorMem+3
    lda #25
    sta SceenMem+4
    stx ColorMem+4
    rts

// Exercise 1.3 Put an X into 4 corners of screen
    // lda #24         // load x into accumulator
    // ldx #1          // White for colourmem
    // sta $0400       // 1024
    // stx $d800       // 55296
    // sta $0427       // 1063
    // stx $d827       // 55335
    // sta $07c0       // 1984
    // stx $dbc0       // 56256
    // sta $07e7       // 2023
    // stx $dbe7       // 56295

    rts
