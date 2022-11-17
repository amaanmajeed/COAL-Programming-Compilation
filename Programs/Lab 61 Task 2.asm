org 100h

.model small

.data
    str1 db "Enter string: $"
    var db 100 dup('$')
    nl db 10, 13, '$'
    

.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov si, offset var
     
    mov ah, 10
    lea dx, var
    mov var, 50
    int 21h

     mov ax, 2 ; clear screen
     int 10h
     
     add di, 2
     mov ah, 2
     mov dl, 24
     mov dh, 12
     int 10h
     
     mov di, offset var
     inc di
     mov cx, di         ;store length
     inc di                          
    
    l2:
     mov ah, 2
     cmp [di], 0dH
     je exit
     mov dl, [di]
     add dl, 20h
     int 21h
     inc di
     loop l2

    exit:
     mov ah, 4ch
     int 21h
    
    
    
    main endp
end main