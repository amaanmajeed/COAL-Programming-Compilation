org 100h

.model small

.data
    str1 db "Enter two numbers from 0-4 only: ", 10, 13, '$'
    
    d1 db "Enter First Digit: $"
    d2 db "Enter Second Digit: $"
    
    space db "    $"
    spac db "   $"
    
    equalline db "==========", 10, 13, '$'  
    
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
    
    lea dx, d1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    lea dx, d2
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al
    
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    
    
    
    lea dx, space
    int 21h
    
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    
    lea dx, spac
    int 21h
    
    mov ah, 2
    mov dl, '+'
    int 21h
    
    mov dl, bh
    int 21h
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    lea dx, equalline
    int 21h
    
    lea dx, space
    int 21h
    
    mov al, bl
    add al, bh
    sub al, 30h
    mov bl, al
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    
           
    mov ah, 4ch
    int 21h
    
    main endp
end main
