org 100h
.model small

.data
    str1 db "Enter string: $"
    str2 db "String output is $"
    nl db 10, 13, '$'
    arr db 16 dup('$')

.code
main proc
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 10
    lea dx, arr
    mov arr, 13
    int 21h
               
    
    mov ah, 9
    lea dx, nl
    int 21h
    lea dx, arr+2
    int 21h
    
    mov ah, 4ch
    int 21h
    
    
main endp
end main
