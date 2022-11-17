org 100h

.model small

.data
msg: name db "Name:    Amaan Majeed$"
id db 10, 13, "ID:      F2020266286$"
Section db 10, 13,"Section:     V3$"

.code
main proc
    mov ah, 9
    lea dx, name
    int 21h
    
    lea dx, id
    int 21h
    
    lea dx, Section
    int 21h
    
    main endp
end main
