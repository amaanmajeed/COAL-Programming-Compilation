org 100h
.model small

.data

.code
    mov ah, 1
    int 21h
    
    mov dl,al
    
    mov ah, 2
    int 21h
    
ret