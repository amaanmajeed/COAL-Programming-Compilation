org 100h

.model small

.data
    A db 4 dup('$')
    B db 4 dup('$')
    C db 4 dup('$')
    nl db 10, 13, '$'

.code

main proc
    
    mov cx, 3
    mov si, 0
    
    mov ah, 1
    
    l1:
      int 21h
      mov A[si], al
      inc si
    loop l1
    
    mov ah, 9
    lea dx, nl
    int 21h
    
    mov cx, 3
    mov si, 0
    
    mov ah, 1
    
    l2:
      int 21h
      mov B[si], al
      inc si
    loop l2
    
    mov cx, 3
    mov si, 0
    
    addition:
      mov al, A[si]
      add al, B[si]
      sub al, '0'
      mov C[si], al
      inc si
    loop addition
    
    mov ax, 2 ; clear screen
    int 10h
     
    add di, 2
    mov ah, 2
    mov dl, 10
    mov dh, 20
    int 10h

    
    mov cx, 3
    mov si, 0
    mov ah, 2
    
    printC:
      mov dl, C[si]
      int 21h
      inc si
    loop printC
    
    mov ah, 4ch
    int 21h
    
    
    main endp
end main