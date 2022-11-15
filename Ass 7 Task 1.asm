org 100h

.model small

.data
    arr db 10, 20, 30, 40, 50
    str1 db "Largest Element is: $"
    R db 5 dup("$")
    
.code

main proc
    
    mov bl, 0
    
    mov si, 0
    mov cx, 5
    
    l1:
      cmp arr[si], bl
      jg greater
     jmp l2
    
    greater:
      mov bl, arr[si]
    
    l2:
      inc si
      loop l1
    
    
    mov al, bl
    mov ah, 0
    mov bl, 10
    mov si, 0
    digit_seperation:
      cmp al, 0
      jle next
      div bl
      mov R[si], ah
      mov ah, 0
      inc si
     jmp digit_seperation
     
    next:
      dec si
      
      mov ah, 9
      lea dx, str1
      int 21h
      
    print:
      mov ah, 2
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
end main