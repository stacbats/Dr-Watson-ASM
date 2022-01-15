BasicUpstart2(main)
// Looking at branching and looping 
// This program is similar to the last but rather than JMP, we use JSR to get to the correct place
// The advantage here with rts is that it wil llesson errors in calculating the JMP branch.
// Again the program counter is helping us achieve what we need

 


.const ScreenMem = $0400
.const ColorMem = $d800


* = $0828 "Start Address"   // 49152

main:
    lda #1     
    jsr L1      
    rts

L1: sta ScreenMem
    sta ColorMem
    rts