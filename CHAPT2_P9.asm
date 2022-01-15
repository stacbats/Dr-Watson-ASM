BasicUpstart2(main)
// Looking at branching and looping 
// 

.const ScreenMem = $0400
.const ColorMem = $d800


* = $0828 "Start Address"   // 49152

.break          // placing break to utilse monitor
main:
    // i have put a #5 in place of #90 so its shorter to flip through the moniter step by step
    lda #5          // 2 bytes: load teh accumulator with 5
    sta 890         // 3 bytes: store the 5 at this address
    lda #0          // 2 bytes: load 0 into the x reg (clearing it)
L1: inx             // 1 byte:  1st loop to start incrementing x reg
    cpx 890         // 3 bytes: Comparing the value each time wit hwhat we stored in at address 890 (5)
    beq L2          // 1 byte:  If its 0, then lets move forward 3 bytes to Loop 2 that will continue to print
    jmp L1          // 1 byte:  Jump back to loop 1 if we are not at zero (start the count down again)
L2: stx ScreenMem   // 3 bytes: Whats in x store in address $0400(see .const)
    lda #1          // 2 bytes: load 1 (white) in accumulator
    sta ColorMem    // 3 bytes: store the accumulator value at this address (teh colour memory for top left)

    rts
    