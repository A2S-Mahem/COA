        
.model small
.stack 100h

.data
    msg db 'ENTER THREE INITIALS: $'
    newline db 10, 13, '$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, msg
    int 21h

    mov ah, 01h
    int 21h
    mov bl, al

    mov ah, 01h
    int 21h
    mov bh, al

    mov ah, 01h
    int 21h
    mov cl, al

    mov ah, 09h
    lea dx, newline
    int 21h

    mov ah, 02h
    mov dl, cl
    int 21h

    mov ah, 09h
    lea dx, newline
    int 21h

    mov ah, 02h
    mov dl, bh
    int 21h

    mov ah, 09h
    lea dx, newline
    int 21h

    mov ah, 02h
    mov dl, bl
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main
