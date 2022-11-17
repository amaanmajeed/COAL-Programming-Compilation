org 100h
.model small
.data
    str1 db "Enter a character: $"
    nl db 10, 13,'$'
    
    x db 6
    y db 20
.code
main proc
    mov ah , 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    mov ax, 2
    int 10h
    
    mov cx, 7
    
    counter:
        mov ah, 2
        mov dh, x
        mov dl, y
        int 10h
        
        
        mov dl, bl
        int 21h
        
        inc bl
        inc x
        inc y
    loop counter
    
    
    main endp
end main