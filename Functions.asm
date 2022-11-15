org 100h
.model small

.data

    str1 db "Amaan Majeed$"
    str2 db "F2020266286$"

.code
main proc
    
    mov ax, offset str1
    call puts
    mov ax, 0408h
    call goto
    mov ax, offset str2
    call puts
    
    mov ah, 4ch
    int 21h
    
    main endp

puts proc
    mov dx, ax
    mov ah, 9
    int 21h
    
    ret
    puts endp

goto proc
    mov dx, ax
    mov ah, 2
    int 10h
    ret
    goto endp
