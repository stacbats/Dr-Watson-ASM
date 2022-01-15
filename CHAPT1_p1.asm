BasicUpstart2(main)
// KICK IMEDIATE = #

.const CLEAR = $e544
.const Border = $d021
.const BackGround = $d020


* = $0828 "Start Address"   // 49152

main:

    lda #01
    stx $900
    lda #02
    adc $900
    sta $901     // store contents in $385

    rts
    