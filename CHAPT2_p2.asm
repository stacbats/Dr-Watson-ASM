BasicUpstart2(main)
// Looking at branching and looping 
// The below shows jumps used in this way(the book actualy refers to position on the PC-prg counter)
// I have added lables for ease of use and referece. Below that commented out is the book version.


.const SceenMem = $0400
.const ColorMem = $d800


* = $0828 "Start Address"   // 49152

main:
    lda #1
    jmp L2
L1:    rts
L2:     sta 1024
    sta 55296
    jmp L1

    // Book version

// * = $0828 "Start Address"   // 49152

// main:
//     lda #1       // USING THE PC COUNTER WE COUNT THE BYTES to follow - this would be 828, 829
//     jmp 834      // 830 & also 831 & 832  
//     rts          // 833
//     sta 1024     // 834 & 835 836
//     sta 55296    // 837 & 838 839
//     jmp 833      // 840 & 841 842 A TOTAL of 15 bytes used, from address 828 to 842