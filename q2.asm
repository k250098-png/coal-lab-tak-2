INCLUDE Irvine32.inc

.data
    msg1 BYTE "First Message: Welcome to Assembly!", 0Dh, 0Ah, 0
    msg2 BYTE "Second Message: Data loaded successfully.", 0Dh, 0Ah, 0
    msg3 BYTE "Third Message: Program finished.", 0Dh, 0Ah, 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString

    mov edx, OFFSET msg2
    call WriteString

    mov edx, OFFSET msg3
    call WriteString

    exit
main ENDP
END main
