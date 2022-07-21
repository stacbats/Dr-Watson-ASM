#import "../constants.asm"

BasicUpstart2(enter)

 * =$c000

enter:

    jsr CLEAR       // Sunroutine to clear screen $e544
    ldx #0          // we are zeroing X reg

LOOP:   txa         // Start of label and also transfer X reg to A
    sta 55296,x     // Base colour address, then adding 1(x)
    sta 55546,x
    sta 55796,x
    sta 56046,x

    sta 1024,x      // Base Screen address ,then adding 1(x)
    sta 1274,x
    sta 1524,x
    sta 1774,x

    inx
    cpx #250        // compare x ith 250 value

    bne LOOP

    rts
