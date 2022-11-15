.model small                 
ORG 100H
.data                        
MESSAGE DB "HELLO WORLD $"   
.code

main proc
    
    mov ah, 09h
    mov dx, offset message     
    int 21h
    
    mov ah, 4ch
    mov al, 00
    int 21h
    
endp
end main