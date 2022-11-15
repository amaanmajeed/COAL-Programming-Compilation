org 100h
.model small
.stack 100h

.data
var1 db 100 dup()
nl db 10, 13, '$'
.code

main proc

mov si, offset var1
mov [si], '$'
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
  jmp l2
   
   
l2:
  mov ah, 2
  cmp [si], '$'
  je exit
  mov dl, [si]
  int 21h
  dec si
  jmp l2
      

exit:
  mov ah, 4ch
  int 21h


main endp
end main