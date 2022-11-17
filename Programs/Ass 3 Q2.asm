org 100h

.model small

.data
    str1 db "**********", 10, 13, '$'
.code
main proc
    mov ah, 9
    lea dx, str1
    int 21h 
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 4ch
    int 21h
    
    
    
    
    main endp
end main
