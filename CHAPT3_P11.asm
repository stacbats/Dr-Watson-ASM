// Chapter 3  Addressing and Screen Outputting:
// Immediate addressing mode. Using this mode we can load teh accumulator immediately.
// Into a register, or used directly as a means of comparison. CPY below

BasicUpstart2(main)

* = $c000 "Start Address"   // 49152

main:
    ldy #0          // Load y with 0
    tya             // transfer y into A
L1: iny             // Increment the Y reg
    sta 1023,y      // Store in address + Y
    lda 0           // Load A wit 1
    sta 55295,y     // store in address + Y
    cpy 100         // compare Y 100 times (Change to test)
    bne L1          // BRANCH if Z not set

    rts
