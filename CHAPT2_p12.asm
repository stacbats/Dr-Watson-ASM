BasicUpstart2(main)
// Looking at branching and looping 
// This is the test excercise 2.3. We want a purple heart displayed 
// but use the Y register to loop through
 
.const ScreenMem = $0400
.const ColorMem = $d800


* = $0828 "Start Address"   // 49152

main:
    lda #42         // 2 bytes: Load 42 into Accu
    ldy 100        // 2 bytes: load 100 into y register
L1: dey             // 
    bne L1          //
    sta ScreenMem
    lda #1
    sta ColorMem
    
    rts