INCLUDE Irvine32.inc

.data
    prompt   BYTE "Enter an integer: ", 0
    hexMsg   BYTE "Hexadecimal: ", 0
    binMsg   BYTE "Binary: ", 0

.code
main PROC
    
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt              
    mov ebx, eax              

   
    mov edx, OFFSET hexMsg
    call WriteString
    mov eax, ebx               
    call WriteHex              
    call Crlf                  

   
    mov edx, OFFSET binMsg
    call WriteString
    mov eax, ebx              
    call WriteBin             
    call Crlf                  
    exit
main ENDP
END main
