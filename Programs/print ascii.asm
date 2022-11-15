org 100h

.model small

.data

    str1 db "Enter a character: $"
    R db 5 dup('$')
    nl db 10, 13, '$'
    
.code

main proc
    
    bigloop:
    
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    mov ah, 0
    cmp al, 13
    je exit 
    
    mov bl, 10
    mov si, 0
    
    l1:
      cmp ax, 0
      je outer
      div bl
      add ah, 30h
      mov R[si], ah
      mov ah, 0
      inc si
    jmp l1
    
    outer:
      mov ah, 9
      lea dx, nl
      int 21h
      
      dec si
    
    pr:
      
      mov ah, 2
      mov dl, R[si]
      int 21h
      
      cmp si, 0
      je bigloop  
      dec si
    jmp pr

    
    exit:
     mov ah, 4ch
     int 21h
    
    
    main endp
end main