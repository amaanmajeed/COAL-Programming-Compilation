org 100h

.model small

.data
str1 db "Enter 1st character: $"
str2 db "Enter 2nd character: $"
outsm db "1st number is lesser than 2nd number.$"
outgt db "1st number is greater than 2nd number.$"
outeq db "Number is found$" 
guess db "Guess again: $"

nl db 10,13,'$'


.code
main proc
    
    
    
     mov ah, 9
     lea dx, str1
     int 21h
     
     mov ah, 1
     int 21h
     mov bl, al
     
     l1:
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
     
     
     mov ah, 9
     
     cmp bh, bl
     je jequal
     jg jsm
     jl jgt
     
     jsm:
       lea dx, outsm
       int 21h
       lea dx, nl
       int 21h
       jmp guessagain
       
     jgt:
       lea dx, outgt
       int 21h
       lea dx, nl
       int 21h
       jmp guessagain
       
     jequal:
       lea dx, outeq
       int 21h
       jmp exit
       
     guessagain:
       mov ah, 9
       lea dx, nl
       int 21h
       lea dx, guess
       int 21h
       jmp l1
       
       
    exit:
      mov ah, 4ch
      int 21h
    
    
    main endp
end main
