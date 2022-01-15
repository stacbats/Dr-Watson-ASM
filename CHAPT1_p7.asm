BasicUpstart2(main)
// Adding my initials to screen with colour

.const CLEAR = $e544
.const Border = $d021
.const BackGround = $d020


* = $0828 "Start Address"   // 49152

main:

//    cld             // clear the decimal
    clc             // clear carry flag
    lda #19         // hex $13 = S
    sta $0400       // address 1024
    lda #1          // white
    sta $d800       // address 55296
    lda #2          // hex $2 = B
    sta $0402       // address 1026  
    lda #2          // red
    sta $d802       // address 55298

    rts

// To understand what we are doing is load the accumulator with 1, 
// then storing it at the address's 1024 & 55296S