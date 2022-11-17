org 100h

.model small

.data

    msg: name db "Name: Amaan Majeed$"
    id db "ID: F2020266286$"
    str1 db "Enter 3 initials: ", '$'
    nl db 10, 13,'$'
    
    char1 db ?
    char2 db ?
    char3 db ?
    
    
    
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
    
    int 21h
    mov bh, al
    
    int 21h
    mov ch, al
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    
    mov ah, 2
    mov dl, bh
    int 21h
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    
    mov ah, 2
    mov dl, ch
    int 21h
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    mov ah, 4ch
    int 21h
    
    
    
    
    
    main endp

end main
