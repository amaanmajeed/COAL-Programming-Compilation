org 100h

.model small

.data
    msg: name db "Name: Amaan Majeed$"
    id db "ID: F2020266286$"
    
    str1 db "Enter a lower case letter: $"
    str2 db "Upper case letter: $"
    
    
    
    nl db 10,13,'$'
    
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
    int 21h
    
    
    
    
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h  
    mov bl, al
    
    sub bl, 20h
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    lea dx, str2
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    
    
    
    main endp
end main
