.model small
.stack 100h
.data
    num1 db 4
    num2 db 3
    msg1 db 10,13,'First Number is: $'
    msg2 db 10,13,'Second Number is: $'
    msg3 db 10,13,'Sum is: $'
    msg4 db 10,13,'Subtraction is: $'

.code
main proc

    
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset msg1
    int 21h

    mov dl, num1
    add dl, 30h
    mov ah, 02h
    int 21h

    mov ah, 09h
    mov dx, offset msg2
    int 21h

    mov dl, num2
    add dl, 30h
    mov ah, 02h
    int 21h

    mov ah, 09h
    mov dx, offset msg3
    int 21h

    mov al, num1
    add al, num2
    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h

    
    mov ah, 09h
    mov dx, offset msg4
    int 21h

    mov al, num1
    sub al, num2
    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h

   
    mov ah, 4Ch
    int 21h

main endp
end main