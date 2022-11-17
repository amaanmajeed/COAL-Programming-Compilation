org 100h
.model small

.stack 100h

.data
prompt1 db "Enter First Number: ",'$'
prompt2 db 10, 13, "Enter Second Number: ", '$'

r1 db 10, 13,"The sum of ", '$'
r2 db " and $"
r3 db " is $"

num1 db ?
num2 db ?
ans db ?

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, prompt1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    mov ah, 9
    lea dx, prompt2
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al
    
    
    
    mov al, bl
    add al, bh
    sub al, 30h
    mov ans, al
    
    
    mov ah, 9
    lea dx, r1
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov ah, 9
    lea dx, r2
    int 21h
    
    mov ah, 2
    mov dl, bh
    int 21h
    
    mov ah, 9
    lea dx, r3
    int 21h
    
    mov ah, 2
    mov dl, ans
    int 21h
    
    mov ah, 4ch
    int 21h
    
    
    
    
    main endp
end main
    
    