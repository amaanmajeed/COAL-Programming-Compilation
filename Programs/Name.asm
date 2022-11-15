;Name in column

org 100h
.model small
.stack 100h
.data

msg: name db "A", 13, 10, "m", 13, 10, "a", 13, 10, "a", 13, 10, "n", 13, 10, " ", 13, 10, "M", 13, 10, "a", 13, 10, "j", 13, 10, "e", 13, 10, "e", 13, 10, "d", 13, 10, '$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    mov dx, offset name
    int 21h
    
    mov ah, 4ch
    int 21h
    
                                         
main endp
end main
ret