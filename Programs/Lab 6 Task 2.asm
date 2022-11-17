org 100h

.model small

.data
str1 db "Enter 1st character: $"
str2 db "Enter 2nd character: $"
out1 db "Output: $"
outsm db " is smaller than $"
outgt db " is greater than $"
outeq db " is Equal to $"

nl db 10,13,'$'


.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    mov ah, 9
    lea dx, nl
    int 21h
    lea dx, str2
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al
    
    mov ah, 9
    lea dx, nl
    int 21h
    lea dx, out1
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov ah, 9
    
    cmp bh, bl
    je jequal
    jg jsm
    jl jgt
    
    jequal:
      lea dx, outeq
      int 21h
      jmp exit
    
    jsm:
      lea dx, outsm
      int 21h
      jmp exit
      
    jgt:
      lea dx, outgt
      int 21h
      jmp exit
      
    exit:
      mov ah, 2
      mov dl, bh
      int 21h
      
      mov ah, 4ch
      int 21h
    
    
    
    main endp
end main
