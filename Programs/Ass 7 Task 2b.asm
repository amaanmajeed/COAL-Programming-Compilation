org 100h

.model smal

.data
    A db 34, 22, 40, 35, 23
    B db 45, 27, 40, 23, 46
    C db 37, 45, 22, 37, 43
    D db 13, 31, 27, 16, 19
    
    nl db 10, 13, '$'
    
    R db 5 dup("$")
    testcount db 31h
    
    str1 db "Avg of Test $"
    total db 0
    
.code
main proc
    
    mov di, 0
    mov al, 0
    
    louter:
          mov total, 0
          mov al, 0
          add al, A[di]
          add al, B[di]
          add al, C[di]
          add al, D[di]
          
          mov bl, 4
          div bl
          
          mov total, al
              
          mov ah, 9
          lea dx, str1
          int 21h
          
          mov ah, 2
          mov dl, testcount
          inc testcount
          int 21h
          
          
          mov dl, ":"
          int 21h
          
          mov dl, " "
          int 21h
          mov ah, 0
          
          mov si, 0
          mov bl, 10
          mov al, total
          
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
            
          l2:
            mov ah, 2
            mov dl, R[si]
            add dl, '0'
            int 21h
            cmp si, 0
            je out1
            dec si
           jmp l2
           
      out1:
             
        cmp di, 4
        je exit
        inc di
        
        mov ah, 9
        lea dx, nl
        int 21h
        mov ah, 0
       jmp louter
        
      exit:
        mov ah, 4ch
        int 21h
      
      
    
    main endp
