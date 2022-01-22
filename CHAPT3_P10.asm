// Chapter 3  Addressing and Screen Outputting:
// Using Zero page. We are restricted to using up to 255 addresses ,but the advantage is 
// we can execute in few cycles(3)

BasicUpstart2(main)

* = $c000 "Start Address"   // 49152

main:
    lda $a0
    sta $0400
    lda #1
    sta $d800

    rts