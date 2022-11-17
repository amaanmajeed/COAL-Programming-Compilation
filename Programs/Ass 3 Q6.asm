org 100h
.model small

.data
    
    x db 0
    y db 3
    num db 65
    
    msg: name db "Name: Amaan Majeed$"
    id db "ID: F2020266286$"
    
    nl db 10, 13, '$'

    
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

    
    mov cx, 7
    
    loop-body:
    
    mov ah,2
    mov dl, x
    mov dh, y
    int 10h
    
    mov ah, 2 
    mov dl, num
    int 21h
    
    
    inc x
    inc y
    inc num
    
    
    
    
    loop loop-body 
    
    main endp
end main
            
            
    mov ah, 2
    int 21h
    inc dl            