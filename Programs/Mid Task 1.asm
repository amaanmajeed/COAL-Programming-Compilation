org 100h

.model small

.data
    str1 db "INPUT: $"
    
    i1 db ?
    i2 db ?
    i3 db ?
    
    
    nl db 10, 13, '$'
.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    add al, 20h
    mov i1, al
    
    int 21h
    add al, 20h
    mov i2, al
    
    int 21h
    add al, 20h
    mov i3, al
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    mov ah, 2
    mov dl, i1
    int 21h
    
    
    mov dl, 1
    mov dh, 2
    int 10h
    
    mov dl, i2
    int 21h
    
    mov dl, 2
    mov dh, 3
    int 10h
    
    mov dl, i3
    int 21h
    
    
    
    
    main endp
end main