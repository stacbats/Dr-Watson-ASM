BasicUpstart2(main)
// Exploring CLC CMP CPX CPY
//  Looking at the N Flag (Bit 7).

 
.const ScreenMem = $0400
.const ColorMem = $d800


* = $0828 "Start Address"   // 49152
.break

main:
    lda #90     // 2 bytes
    sta 900     // 3 bytes

    ldy 0       //  2 bytes:    Load Y with 0
L1: iny         //  1 byte:     Increment Y Reg.
    cpy 900     //  3 bytes:    compare contents of 900 with Y register
    bmi L1      //  2 bytes:    Branch on Minus - testing the N Flag

    sty ScreenMem   // 3 bytes:
    lda #1          // 2 bytes:
    sta ColorMem    // 3 bytes:

    rts  
