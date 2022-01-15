BasicUpstart2(main)
// KICK IMEDIATE = #

.const CLEAR = $e544
.const Border = $d021
.const BackGround = $d020


* = $0828 "Start Address"   // 49152

main:

    lda #01
    sta 1024        // $0400
    sta 55296       // $d800

    rts