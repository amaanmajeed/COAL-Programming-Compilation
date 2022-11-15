org 100h

.model small

.data
    str1 db "Enter string: $"
    str2 db "Reversed Str: $"
    R db 20 dup('?')
    
    nl db 10, 13, '$'

.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    mov si, 0
    
    l1:
      int 21h
      cmp al, 13
      je next
      mov R[si], al
      inc si    
     jmp l1
    
    next:
      dec si
      
      mov ah, 9
      lea dx, nl
      int 21h
      mov ah, 2
      
    l2:
      mov dl, R[si]
      int 21h
      
      cmp si, 0
      je exit
      dec si
    jmp l2
    
    
    exit:
      mov ah, 4ch
      int 21h
     
    
    main endp
end main