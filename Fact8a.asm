org 100h


.model small

.data
   str1 db "Enter Number: $"
   strrev db 10, 13, "Reversed String: $"
   R db 10 dup('$')

.code

main proc
   
   mov ah, 9
   lea dx, str1
   int 21h
   
   mov ah, 1
   int 21h
   mov ah, 0
   sub al, 30h
   
   mov bx, ax
   
   
   lmul:
     cmp bx, 2
     je next
     dec bx
     mul bx
    jmp lmul 
      
   next:
     mov bx, 10
     mov si, 0
     jmp l1
   
   l1:
     cmp ax, 0
     je next2
     div bx
     mov R[si], dl
     mov dl, 0
     inc si
    jmp l1
   
   next2:
     dec si
     
     mov ah, 9
     lea dx, strrev
     int 21h
     mov ah, 2
     
   print:
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


