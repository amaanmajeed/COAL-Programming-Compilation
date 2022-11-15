org 100h

.model small

.data
.code

mov ah, 1 ; what will happen
int 21h   ;interrupt/ input - stored in al register

mov dl, al

mov ah, 2    ;Output code
int 21h                

ret