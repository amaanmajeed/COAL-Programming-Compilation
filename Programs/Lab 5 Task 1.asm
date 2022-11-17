org 100h
.model small

.data
    str1 db "Enter a character: $"
    nl db 10, 13,'$'
    
.code

main proc
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    mov ah, 2
    mov dh, 12
    mov dl, 40
    int 10h
    
    mov cx, 10
    
    loop-body:
        mov ah, 2
        mov dl, bl
        int 21h
        
        inc bl
    loop loop-body;
    
    
    main endp
end main