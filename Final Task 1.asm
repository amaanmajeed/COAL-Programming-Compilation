org 100h

.model small

.data
    strinvalid db 10, 13, "Invalid Character Entered$"
    str1 db "Enter a number: $"
    strf db 10, 13, "Factorial: $"
    nl db 10, 13, '$'
    R db 5 dup('$')
    num db 0
.code
main proc
    
    again:
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    mov ah, 0          ; bh dh
    cmp al, '0'        ; bl num
    jl invalid
    cmp al, '9'
    jg invalid
    sub al, '0'
    
    mov bh, al
    
    mov num, 1
    factorial:
      cmp num, bh
      je oute
      mul num
      inc num
     jmp factorial
    
    oute:
    
    mov bl, 10
    mov si,  0
    l1:             
      cmp al, 0
      je next
      div bl
      mov R[si], ah
      mov ah, 0
      inc si
     jmp l1
    
    next:
      dec si
      
      mov ah, 9
      lea dx, strf
      int 21h
      mov ah, 2
      
    print:
      
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
      
    invalid:
      mov ah, 9
      lea dx, strinvalid
      int 21h
      lea dx, nl
      int 21h
      jmp again
              
    main endp
end main
