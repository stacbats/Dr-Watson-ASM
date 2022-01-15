BasicUpstart2(main)
// Looking at branching and looping 
// This is the test excercise 2.3. We want a purple heart displayed 
// but use the Y register to loop through
 
.const ScreenMem = $0400
.const ColorMem = $d800


* = $0828 "Start Address"   // 49152

main:
    ldx #0          // 2 bytes: Load 0 int X REG
    lda #83         // 2 bytes: Load 83 into ACCU
L1: inx             // 1 byte:  Increment X
    stx 900         // 3 bytes: Store it at address 900
    cmp 900         // 3 bytes: Compare Accumulator with address 900 (asking if 83 is 0, decrease it until it is)
    bne L1          // 2 bytes: Branch if not equal to whats stored
    stx ScreenMem   // 3 bytes: Store x into Variable = address $0400
    lda #1          // 2 bytes: Load Accu with 1
    sta ColorMem    // 3 bytes: store it at address $d800 (gives us the colour for top left)

    rts
    