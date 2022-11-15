org 100h
.model small

.data
A1 db 10 dup('$')
A2 db 10 dup('$')
A3 db 10 dup('$')
A4 db 10 dup('$')

str1 db "Enter 3 Values: $"
nl db 10, 13, '$'

addline db "Addition: $"
subline db "Subtraction: $"

.code

main proc
mov ah, 9
lea dx, str1
int 21h

mov si, offset A1
mov cx, 3
jmp l1
;inserting in 1st array
l1:
  mov ah, 1
  int 21h
  mov [si], al
  inc si
loop l1
;-------


mov ah, 9
lea dx, nl
int 21h

lea dx, str1
int 21h

mov si, offset A2
mov cx, 3
jmp l2

;inserting in 2nd array
l2:
  mov ah, 1
  int 21h
  mov [si], al
  inc si
loop l2
;-------


;Adding
mov cx, 3
mov bx, 0
jmp loop-addition

loop-addition:
  mov si, offset A1
  mov dl, [si+bx]
  mov si, offset A2
  add dl, [si+bx]
  sub dl, 30h
  
  mov si, offset A3
  mov [si+bx], dl
  inc bx

loop loop-addition


mov ah, 9
lea dx, nl
int 21h
lea dx, addline
int 21h
lea dx, A3
int 21h 


;Subtraction
mov cx, 3
mov bx, 0
jmp loop-Subtraction

loop-Subtraction:
  mov si, offset A1
  mov dl, [si+bx]
  mov si, offset A2
  sub dl, [si+bx]
  add dl, 30h
  
  mov si, offset A4
  mov [si+bx], dl
  inc bx

loop loop-Subtraction

mov ah, 9
lea dx, nl
int 21h
lea dx, subline
int 21h
lea dx, A4
int 21h 

mov ah, 4ch
int 21h

main endp
end main
