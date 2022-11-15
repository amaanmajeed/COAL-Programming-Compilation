org 100h

.model small

.data
    str1 db "Amaan Majeed$"
    str2 db "F2020266286$"

.code
main proc
    
    mov ah, 2
    mov dx, 0c27h ; screen position center
    int 10h
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov cx, 30
    mov ah, 86h   ; Time 15xseconds
    int 15h
    
    mov ax, 3     ;clear screen
    int 10h
    
    mov ah, 86h
    mov cx, 75
    int 15h
    
    mov ah, 2
    mov dx, 0c27h
    int 10h
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 4ch
    int 21h
    
    
    main endp
end main