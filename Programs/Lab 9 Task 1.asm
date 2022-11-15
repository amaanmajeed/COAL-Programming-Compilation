org 100h

.model small

.data
    str1 db "Enter 1st number: $"
    str2 db 10, 13, "Enter 2nd number: $"
    
    num1 dw ?
    num2 dw ?
    ans dw ?
    R1 db 5 dup(?)
    
    R2 db 5 dup(?)
    R db 5 dup('$')
    
    
    out1 db 10, 13, "The sum of $"
    out2 db " and $"
    out3 db " is $"
.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov si, 0
    mov cx, 3
    
    l1:
      mov ah, 1
      int 21h
      mov R1[si], al
      inc si
     loop l1
     
    mov ah, 9
    lea dx, str2
    int 21h
    
    mov si, 0
    mov cx, 3
    l2:
      mov ah, 1
      int 21h
      mov R2[si], al
      inc si
     loop l2
     
    
    
    
    mov num1, 0
    mov cx, 3
    mov bl, 10
    mov si, 0
    
    l3:
      mov ax, num1
      mul bl
      mov dh, 0
      mov dl, R1[si]
      sub dl, 30h
      add ax, dx
      mov num1, ax
      inc si
     loop l3
     
     
    
     
    
    mov num2, 0
    mov cx, 3
    mov bl, 10
    mov si, 0
    
    l4:
      mov ax, num2
      mul bl
      mov dh, 0
      mov dl, R2[si]
      sub dl, 30h
      add ax, dx
      mov num2, ax
      inc si
     loop l4
     
    ;2 inputs done 
    
    
    
     mov ah, 9
     lea dx, out1
     int 21h
     
     mov si, 0
     mov bl, 10
     mov ax, num1
     
     l5:
       cmp ax, 0
       je next1
       div bl
       mov R[si], ah
       mov ah, 0
       inc si
      jmp l5
      
     next1:
       dec si
       
     print1:
       mov ah, 2
       mov dl, R[si]
       add dl, '0'
       int 21h
       cmp si, 0
       je n1
       dec si
      jmp print1
      
     n1: 
     
     mov ah, 9
     lea dx, out2
     int 21h
     
     mov si, 0
     mov bl, 10
     mov ax, num2
     
     l6:
       cmp ax, 0
       je next2
       div bl
       mov R[si], ah
       mov ah, 0
       inc si
      jmp l6
      
     next2:
       dec si
       
     print2:
       mov ah, 2
       mov dl, R[si]
       add dl, '0'
       int 21h
       cmp si, 0
       je n2
       dec si
      jmp print2
      
     n2:
     
     mov ah, 9
     lea dx, out3
     int 21h
       
     
     
     mov ax, num1
     mov bx, num2
     add ax, bx
     
     mov bl, 10
     mov si, 0
     l7:
       cmp ax, 0
       je next
       div bl
       mov R[si], ah
       mov ah, 0
       inc si
      jmp l7
      
     next:
       dec si
       
     print:
       mov ah, 2
       mov dl, R[si]
       add dl, '0'
       int 21h
       cmp si, 0
       je exit
       dec si
      jmp print
     
     
     
     exit:
       mov ah, 4ch
       int 21h
      
     
    main endp
end main