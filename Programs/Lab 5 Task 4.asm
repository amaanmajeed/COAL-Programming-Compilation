org 100h
.model small
.data
    str1 db "Enter first digit: $"
    str2 db "Enter second digit: $"
    space db "   $"
    spac db "    $"
    equalline db "==========$"
    
    nl db 10, 13, '$'
    
.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al
    
    mov ah, 9
    lea dx, nl
    int 21h
    lea dx, str2
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
             
             
    mov ah, 9
    lea dx, nl
    int 21h
    lea dx, spac
    int 21h
    
    mov ah, 2
    mov dl, bh
    int 21h
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    lea dx, space
    int 21h
    
    mov ah, 2
    mov dl, '+'
    int 21h
    
    mov dl, bl
    int 21h
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    lea dx, equalline
    int 21h
    
    lea dx, nl
    int 21h
    
    lea dx, spac
    int 21h
    
    mov al, bh
    add al, bl
    sub al, 30h
    mov bl, al
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    main endp
end main
