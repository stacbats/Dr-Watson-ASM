BasicUpstart2(main)
// Using the TAX & TAY command to transfer A Register to X REG & Y REG

.const SceenMem = $0400
.const ColorMem = $d800


* = $0828 "Start Address"   // 49152

main:
// // Exercise 1.4  Put A in Acu & Z in XReg, then swap them and display 
//     lda #26             // letter Z Into A register
//     ldx #1              // letter A Into X register
//     stx 900             // first lets store X Reg at an address
//     tax                 // TRANSFER A into X
//     lda 900             // load whats at 900 into accumulator (our Z as we swapped them)
//     sta 1024            // Now Store A at 1024 (which is a Z)
//     stx 2023            // Store X at 2023 (Which is an A based in line 15 our TAX)
//     lda #5              // Lets make colour ram display green
//     sta 55296           // responding color codes
//     sta 56295

//     rts  
 
// Exercise 1.5  Load chars into registers, swap them all over
    lda #90          // Load A with 90      A Diamond
    ldx #42          // Load X with 42      An asterix
    ldy #5           // Load Y with 5       An E
    stx 900          // Store our astrix (Xreg) at address 900
    tax              // TRANSFER A (our Diamond) into X
    tya              // TRANSFER Y (our E) into A
    ldy 900          // now load contents of Y into address 900

    sta 1024         // store A which is now an E @ address 1024 - Top left
    sta 1063         // As above but at address 1063 - Top right
    stx 1984         // store X which holds the Diamond @ address 1984 - bottom left
    sty 2023         // store Y which now holds the  Astrix @ address  - Bottom right
    lda #0          // Lets turn em BLACK
    sta 55296        // below responding colour screen positions also
    sta 55335
    sta 56256
    sta 56295

    rts 