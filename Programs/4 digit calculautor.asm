org 100h    

.model small

.data
   str1 db "Enter Choice: ", 10, 13, "1. Addition ", 10, 13, "2. Subtraction", 10, 13, "3. Multiplication",10, 13, "4. Division", 10, 13, "Enter Choice: $"
   
   nl db 10, 13, 10, 13, '$'
   
   invalid db "Enter a valid choice$"
   
   
   
.code
main proc
   
   mov ah, 9
   lea dx, str1
   int 21h
   
   mov ah, 1
   int 21h
   
   cmp al, 1
   je addition
   
   cmp al, 2
   je subtraction
   
   cmp al, 3
   je multiplication
   
   cmp al, 4
   je division
   
   mov ah, 9
   lea dx, invalid
   int 21h
   
   addition:
      
   
   
 main endp


