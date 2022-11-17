org 100h

.model small

.data
    str1 db "Enter String: $"
    strrev db "String Reversed: $"
    nl db 10, 13, '$'
    
    count db 0
    
.code
main proc
   
   mov ah, 9
   lea dx, str1
   int 21h
   
   linput:
     mov ah, 1
     int 21h
     
     cmp al, 13
     je next
     
     mov ah, 0
     
     push ax
     inc count
     
    jmp linput
    
   
   next:
     mov ah, 9
     lea dx, nl
     int 21h
     
     lea dx, strrev
     int 21h
     
   
   print:
     cmp count, 0
     je exit
     pop dx
     mov ah, 2
     mov dh, 0
     int 21h
     dec count
    jmp print
     
     
   exit:
     mov ah, 4ch
     int 21h
   
 main endp