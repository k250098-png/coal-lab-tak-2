INCLUDE Irvine32.inc

.data
    var1 SDWORD ?
    var2 SDWORD ?
    prompt1 BYTE "Enter first integer: ", 0
    prompt2 BYTE "Enter second integer: ", 0

.code
main PROC
    ; Read first integer
    mov edx, OFFSET prompt1
    call WriteString
    call ReadInt
    mov var1, eax

    ; Read second integer
    mov edx, OFFSET prompt2
    call WriteString
    call ReadInt
    mov var2, eax

    ; Swap values using EAX and EBX registers
    mov eax, var1
    mov ebx, var2
    mov var1, ebx
    mov var2, eax

    exit
main ENDP
END main
