BasicUpstart2(main) 

* = $0828 "Start Address"   // 49152

main:
    lda #1          // loading number 1 into A
    sta $0400       // Storing it at address 1024
    sta 55296       // As above
    ldx $0400       // Load the contents of 1024 into X Register
    stx $0402       // Store contents of X reg into address 1026
    stx 55298       // as above

    rts

// utilising the X register.  STX means to store contents of the X register
// at the address specified.  We used LDX to load the contents into Xreg