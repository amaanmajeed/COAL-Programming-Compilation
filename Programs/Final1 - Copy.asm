org 100h

.model small

.data
    str1 db "Enter string: $"
    strr db 10, 13, "Reversed str: $"
    
    strinvalid db 10, 13, "String Invalid$"
    
    vowel_count db 0
    con_count db 0
    
    strv db 10, 13, "Vowels: $"
    strc db 10, 13, "Consonants: $"
    
.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov bl, 10
    linput:
      mov ah, 1
      int 21h
      dec bl
      cmp bl, 0
      je next
      mov ah, 0
      
      cmp al, ' '; Check Space 
      je pusho
      
      ;Invalid String
      
      cmp al, 'A'
      jl invalid
      cmp al, 'Z'
      jg check_valid
      jmp next1
      
      check_valid:
        cmp al, 'a'
        jl invalid
        cmp al, 'z'
        jg invalid
      jmp next1
       
      invalid:
        mov ah, 9
        lea dx, strinvalid
        int 21h
        jmp exit
      
      next1:
      
      ; Vowel Check
      cmp al, 'a'
      je vowel
      cmp al, 'e'
      je vowel
      cmp al, 'i'
      je vowel
      cmp al, 'o'
      je vowel
      cmp al, 'u'
      je vowel
      cmp al, 'A'
      je vowel
      cmp al, 'E'
      je vowel
      cmp al, 'I'
      je vowel
      cmp al, 'O'
      je vowel
      cmp al, 'U'
      je vowel
      
      
      inc con_count
      jmp pusho
      
    vowel:
      inc vowel_count
      jmp pusho
      
    pusho:
      push ax
    jmp linput
    
    next:
            
      mov bl, 11
      mov ah, 9
      lea dx, strr
      int 21h
      
    print:
      pop dx
      mov ah, 2
      int 21h
      dec bl
      cmp bl, 0
      je counts
      
    jmp print
      
      
    counts:
      mov ah, 9
      lea dx, strv
      int 21h
      
      mov ah, 2
      mov dl, vowel_count
      add dl, 30h
      int 21h
      
      mov ah, 9
      lea dx, strc
      int 21h
      
      mov ah, 2
      mov dl, con_count
      add dl, 30h
      int 21h
      
    exit:  
      mov ah, 4ch
      int 21h
      
    main endp
end main    