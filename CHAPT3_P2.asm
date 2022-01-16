// Chapter 3  Addressing and Screen Outputting:
// Working on using the X & Y registers to manipulate and Animate

// using STX, if X contained 100 and the Accumulator 90, the instruction stx 1024 will put a diamond 
// into 1024 plus 100. Using the Increment instruction, this enables the location on screen to be indexed
//   Program 3.1

 
.const ScreenMem     = $0400
.const ColorMem      = $d800


* = $828 "Start Address"   // Poke 2088

main:
    ldx #216        // 2 bytes: load 100 into X
L1: lda #42         // 2 bytes: Load 90 into A (our diamond)
    sta 808,x        // 3 bytes: Outputs the diamond at address (1023+x)
    lda #1          // 2 bytes: Load Accumulator with 1
    sta 55080,x       // 3 bytes: Ensure the colour is white for colour Mem
    inx             // 1 byte:  decrement the X value  (243 / $f3)
    bne L1          // 2 byte: Branch if not equal. The book says BNE 243 

    rts  
