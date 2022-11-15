org 100h

.model small

.data
    A db 34, 22, 40, 35, 23
    B db 45, 27, 40, 23, 46
    C db 37, 45, 22, 37, 43
    D db 13, 31, 27, 16, 19
    
    nl db 10, 13, '$'
    
    R db 5 dup("$")
    stdcount db '1'
    
    str1 db "Avg of Student $"
    total db 0
    
    
    
.code
main proc
    
    mov si, offset A
    call avg
    
    mov si, offset B
    call avg
    
    mov si, offset C
    call avg
    
    mov si, offset D
    call avg

    mov ah, 4ch
    int 21h
                 
    main endp


avg proc
    
    mov cx, 5
    mov total, 0
    
    literate:
      mov al, [si]
      add total, al
      inc si
     loop literate
     
    mov al, total
    mov bl, 5
    div bl
    mov bh, ah
    add bh, bh
    mov ah, 0
    
    mov bl, 10
    mov si, 0
    
    
    digit_sep:
      cmp ax, 0
      je next 
      div bl
      mov R[si], ah
      mov ah, 0
      inc si
     jmp digit_sep
    
    next:
      dec si
      mov ah, 9
      lea dx, str1
      int 21h
      mov ah, 2
      mov dl, stdcount
      int 21h
      inc stdcount
      
      mov dl, ':'
      int 21h
      mov dl, ' '
      int 21h
      
    print:
      mov dl, R[si]
      add dl, '0'
      int 21h
      cmp si, 0
      je exit
      dec si
      jmp print
     
    exit:
      mov ah, 2
      mov dl, '.'
      int 21h
      mov dl, bh
      add dl, '0'
      int 21h
      mov ah, 9
      lea dx, nl
      int 21h
      mov ah, 0
      
      
    ret
    
    avg endp
end