org 100h

.model small
.stack 100h

.data
    str1 db "Enter String: $"
    str db 30 dup('$')
    nl db 10,13,'$'

.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov bx, 0
    
    l1:
      mov ah, 1
      int 21h
      cmp al, 13
      je outer
      mov ah, 0
      push ax
      inc bx
     jmp l1
     
    outer:
      mov ah, 9
      lea dx, nl
      int 21h
     
    
    l2:
      cmp bx, 0
      jle exit
      pop dx
      mov ah, 2
      int 21h
      dec bx
     loop l2
     
    exit:
      mov ah, 4ch
      int 21h

    
    main endp
end main