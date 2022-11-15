org 100h

.model small

.data
    
    str1 db "Enter First Digit: $"
    str2 db "Enter Second Digit: $"
    
    ans db "Answer: $"
    nl db 10, 13, '$'
    
    digit1 db 4 dup('$')
    digit2 db 4 dup('$')
    digit3 db 4 dup('$')
    
    num1 dw ?
    num2 dw ?
    
.code
main proc
    
    mov dx, offset str1
    push dx
    mov si, offset digit1
    call input    
    
    
    mov ah, 4ch
    int 21h  
main endp



input proc
    
    mov ah, 9
    int 21h
    mov cx, 4
    mov ah, 1
    l1:
      int 21h
      mov [si], al
      inc si
     loop l1
     
    mov ah, 9
    lea dx, nl
    int 21h
    ret
input endp 

printpr proc
    
    mov ah, 9
    lea dx, ans
    int 21h
    
    mov cx, 4
    mov ah, 2
    print:
      mov dl, [si]
      int 21h
      inc si
     loop print
    
    mov ah, 9
    lea dx, nl
    int 21h
     ret
printpr endp

num proc
    
    mov cx, 4
    mov bl, 10
    mov [bp+2], 0
    mov bp, sp
    
    loop1:
      mov ax, [bp+2]
      mul bl
      mov dh, 0
      mov dl, [si]
      sub dl, 30h
      add ax, dx
      mov [bp+2], ax
      inc si
     loop loop1
    
    ret 2
num endp


