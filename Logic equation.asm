org 100h

.model small

.data
    a db 0
    b db 3
    c db 5
    d db 6

.code
main proc
    mov ax, 0
    
    mov al, b
    mov bl, c
    mul bl
    inc al
    
    mov bl, d
    div bl
    
    mov bl, al
    mov bh, ah
    
    mov ah, 2
    mov dl, bl
    add dl, 30h
    int 21h
    
    mov dl, '.'
    int 21h
    
    mov dl, bh
    add dl, 30h
    int 21h
    
    
    
    
    main endp
end main