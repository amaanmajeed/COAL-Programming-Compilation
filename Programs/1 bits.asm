org 100h

.model small

.data

.code
main proc
    
    mov al, 10111011b
    mov cx, 8
    
    l1:
      shl al, 1
      jc one
      inc dl
      jmp l2
      
    one:
      inc bl
      
    l2:
     loop l1
     
    
    mov ah, 2 
    add bl, '0'
    mov dl, bl
    int 21h
      
      
    
    main endp
end main
