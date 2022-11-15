org 100h
.model small

.data
msg db 60 dup(?)
nl db 10, 13, '$'

.code
main proc
    mov si,offset msg

input: 
    mov ah,1
    int 21h
    cmp al,13
    je display
    mov [si],al
    inc si
    jmp input

display: 
    mov [si],'$'
    mov di,offset msg
    mov ah, 9
    lea dx, nl
    int 21h

again: 
    cmp [di],'$'
    je last
    cmp [di],32
    je next
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again

next: 
    mov ah, 9
    lea dx, nl
    int 21h
    jmp again

last: 
    mov ah,4ch
    int 21h

main endp