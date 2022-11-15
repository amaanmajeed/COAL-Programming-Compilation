org 100h
.model small
.stack 100h

.data
var1 db 100 dup()
nl db 10, 13, '$'
.code

main proc
    
    mov si, offset var1
    inc si
    
    
    l1:
      mov ah, 1
      int 21h
      cmp al, 0DH
      je program_ends
      mov [si], al
      inc si
      jmp l1
      
    program_ends:
      mov [si], '$'
      
      mov ah, 9
      lea dx, var1
      int 21h
      
      mov ah, 4ch
      int 21h
      
    
    
main endp
end main