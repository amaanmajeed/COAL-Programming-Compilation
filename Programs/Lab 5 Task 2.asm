org 100h
.model small
.data
    str1 db "Enter a character: $"
    nl db 10, 13,'$'
    
    y db 6
    x db 20
    
.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    mov ax, 2
    int 10h
    
    
    mov cx, 7
    
    Counter:
        mov ah, 2
        mov dh, y
        mov dl, x
        int 10h
               
        mov ah, 2
        mov dl, bl
        int 21h
        
        inc bl
        inc y
    loop Counter
    
    mov ah, 4ch
    int 21h 
    
    main endp
end main
