BasicUpstart2(main)
// Using the TAX & TAY command to transfer A Register to X REG & Y REG

.const SceenMem = $0400
.const ColorMem = $d800


* = $0828 "Start Address"   // 49152

main:
// Exercise 1.1  Put A into top left and colour
    lda #1      // letter A 
    sta SceenMem+13     // Screen location plus 13
    lda #1              // reset to 1 for white
    sta ColorMem+13        // Colour mem location plus 13
    tax             // *** Transfer A to x reg
    stx SceenMem+15     //
    stx ColorMem+15

    rts