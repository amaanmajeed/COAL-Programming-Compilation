org 100h

.model small

.data
    str1 db "ENTER A HEX DIGIT(capital): $" 
    str2 db "IN DECIMAL IT IS: $"
    
    msg: name db "Name: Amaan Majeed$"
    id db "ID: F2020266286$"

    
    nl db 10, 13, '$'
    
.code
main proc
    mov ah, 9
    lea dx, name
    int 21h
    
    lea dx, nl
    int 21h
    
    lea dx, id
    int 21h
    lea dx, nl
    int 21h
    lea dx, nl
    int 21h

    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    sub bl, 17
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    lea dx, str2
    int 21h
    
    
    mov ah, 2
    mov dl, '1'
    int 21h
    
    mov dl, bl
    int 21h
    
    
    mov ah, 4ch
    int 21h
    
    
    main endp
end main


