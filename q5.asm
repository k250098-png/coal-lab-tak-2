INCLUDE Irvine32.inc

.data
    myNumber SBYTE -25          
    message  BYTE "Output: ", 0 
.code
main PROC
   
    mov edx, OFFSET message
    call WriteString

    movsx eax, myNumber        
    call WriteInt             

    exit
main ENDP
END main                      
