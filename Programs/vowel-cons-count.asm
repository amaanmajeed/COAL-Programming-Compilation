org 100h

.model small

.data
    str1 db "Enter string: $"
    nl db 10, 13, '$'
    
    R db 50 dup(?)
    vowels db 0
    cons db 0
    
    strv db 10, 13, "Vowels: $"
    strc db 10, 13, "Cons: $"

.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    l1:
      int 21h
      cmp al, 13
      je exit
      
      cmp al, 'a'
      je found_vowel
      cmp al, 'e'
      je found_vowel
      cmp al, 'i'   
      je found_vowel
      cmp al, 'o'   
      je found_vowel
      cmp al, 'u'   
      je found_vowel
      
      cmp al, 'A'   
      je found_vowel
      cmp al, 'E'   
      je found_vowel
      cmp al, 'I'   
      je found_vowel
      cmp al, 'O'   
      je found_vowel
      cmp al, 'U'   
      je found_vowel
      cmp al, ' '
      je l1
      
      inc cons
      
     jmp l1
     
    found_vowel:
      inc vowels
      jmp l1
      
    exit:
      add vowels, 30h
      add cons, 30h
      
      mov ah, 9
      lea dx, strv
      int 21h
      
      mov ah, 2
      mov dl, vowels
      int 21h
      
      mov ah, 9
      lea dx, strc
      int 21h
      
      mov ah, 2
      mov dl, cons
      int 21h
      
      mov ah, 4ch
      int 21h
      
    main endp
end main