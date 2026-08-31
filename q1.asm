INCLUDE Irvine32.inc

.data
    var1 SDWORD ?
    var2 SDWORD ?
    prompt1 BYTE "Enter first integer: ", 0
    prompt2 BYTE "Enter second integer: ", 0

.code
main PROC
   
    mov edx, OFFSET prompt1
    call WriteString
    call ReadInt
    mov var1, eax

   
    mov edx, OFFSET prompt2
    call WriteString
    call ReadInt
    mov var2, eax

    
    mov eax, var1
    mov ebx, var2
    mov var1, ebx
    mov var2, eax

    exit
main ENDP
END main
