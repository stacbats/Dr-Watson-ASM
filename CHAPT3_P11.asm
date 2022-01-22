// Chapter 3  Addressing and Screen Outputting:
// Immediate addressing mode. Using this mode we can load teh accumulator immediately.
// Into a register, or used directly as a means of comparison. CPY below

BasicUpstart2(main)

* = $c000 "Start Address"   // 49152

main:
    ldy #0
    tya             // transfer y into A
L1: iny
    sta 1023,y
    lda 0
    sta 55295,y
    cpy 100
    bne L1

    rts
