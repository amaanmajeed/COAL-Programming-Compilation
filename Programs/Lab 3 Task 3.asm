org 100h

.model small

.data
str1 db "Enter character: ",'$'
r1 db 10, 13, "Lower case ", '$'
r2 db " converted to upper case " , '$'



.code

main proc
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    
    
    mov ah, 9
    lea dx, r1
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov ah, 9
    lea dx, r2
    int 21h
    
    sub bl, 20h
    
    mov ah,2
    mov dl, bl
    int 21h
    
    
    
    mov ah, 4ch
    int 21h
    
    
    
    main endp
end main
