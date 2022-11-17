org 100h
.model small

.data
    A1 db 4 dup(?)
    str1 db "Enter a string: $"
    str2 db "Minimum number is: $"
    nl db 10, 13, '$'

.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov dl, 0
    
    mov bl, 39h
           
    mov cl, 0
    
    l1:
      inc dl
      cmp dl, 6
      je exit
      mov ah, 1
      int 21h
      cmp al, bl
      jl lower_store
    loop l1
    
    lower_store:
      mov bl, al
      jmp l1
    
    exit:
      mov ah, 9
      lea dx, nl
      int 21h
      lea dx, str2
      int 21h
      
      mov ah, 2
      mov dl, bl
      int 21h
    
      mov ah, 4ch
      int 21h
    
    
    main endp
end main