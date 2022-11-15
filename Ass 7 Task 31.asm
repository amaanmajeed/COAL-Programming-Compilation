org 100h

.model small

.data

    str1 db 10, 13, "Enter string: $"
    print str db 10, 13, "Number: $"
    
    num1 dw 0
    var1 dw 0
    R db 5 dup('$')

.code

main proc
    
    mov ax, offset num1
    push ax
    
    
    call enternum
    
    mov ax, offset num1
    push ax
    call printnum
    
    
    
    main endp



enternum proc
   
   mov bp, sp
    
    mov ah, 9
    lea dx, str
    int 21h
    
    mov ah, 1
    mov si, 0
    l1:
      int 21h
      cmp al, 13
      je next
      
      mov al, R[si]
      inc si
     jmp l1
    
    next:
      mov si, 0
      mov bx, 0
      mov ax, 0
      
    l2:
      cmp R[si], '$'
      je out1
      
      mov ax, var1
      mul bl
      mov dh, 0
      mov dl, R[si]
      sub dl, 30h
      add ax, dx
      mov var1, ax
      inc si
     jmp l2
     
     out1:
       pop ax
       mov [bp+2], ax
      
     ret
    enternum endp


printnum proc
   
   mov ah, 9
   lea dx, printstr
   int 21h
   
   pop dx
   
   mov ah, 1
   lprint:
     cmp dx, 
   
   printnum endp

   
   