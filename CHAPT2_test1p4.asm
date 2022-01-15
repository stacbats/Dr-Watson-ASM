BasicUpstart2(main)
// Looking at branching and looping 
// What we are looking to write here is a program to put a 3 in the Acumulator, then 
// jumpt to a subroutine at 900 twhich adds 3 t othe 3 already in A ,
// return to the original and print the accumulator sum in the top left hand of screen

.const ScreenMem = $0400
.const ColorMem = $d800


* = $0828 "Start Address"   // 49152

main:
    lda #3              // Load 3 into A    
    jsr L1              // Jump to Address (label here See L1)
    sta ScreenMem       // Print 6 to the screen (hopefully an F)
    lda #0              // Make top left black(if we didnt we wouldnt see the result)
    sta ColorMem        // Mem address for top left
    rts

L1: sta 950             // Store the 3 from earlier at this address 
    adc 950             // Add whats in memory to Accumulator (now 6)
    rts                 // jump back up 
 