BasicUpstart2(main)
// Using the TAX & TAY command to transfer A Register to X REG & Y REG

.const SceenMem = $0400
.const ColorMem = $d800


* = $0828 "Start Address"   // 49152

main:

    lda #65             // 65 = SPADE
    ldx #83             // 83 = HEART
    stx 900
    tax                 // Transfer Accumulator into x
    lda 900             // Which happens to be our Heart
    sta SceenMem        // The heart should now be on our left
    stx SceenMem+1      // (should now have our Spade on the right)

    lda #2
    ldx #0
    sta ColorMem
    stx ColorMem+1

    rts
