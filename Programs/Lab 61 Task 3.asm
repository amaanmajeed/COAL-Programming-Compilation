org 100h
.model small
.stack 100h

.data
var1 db 30 dup('$')
nl db 10, 13, '$'
str db "Amaan$"
.code

main proc

mov si, offset var1
mov [si], 0Dh
inc si


l1:
  mov ah, 1
  int 21h
  cmp al, 0DH
  je l15
  mov [si], al
  inc si
  jmp l1
  
l15:
  dec si
  
  mov ax, 2
  int 10h
  
  mov ah, 2
  mov dl, 26
  mov dh, 15
  int 10h
  
  jmp l2
  
   mov di, offset str
   inc di
   mov cx, di
   
   
l2:
  mov ah, 2
  cmp [si], 0Dh
  je exit
  mov dl, [si]
  int 21h
  dec si
  loop l2
      

exit:
  mov ah, 4ch
  int 21h


main endp
end main