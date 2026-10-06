.model small
.stack 100h

.data
    num1 db 4          ; first number
    num2 db 3          ; second number
    sum db ?        ; store result
    subtr db ?
    msg db 10,13,'Sum = $' ; message to display  
    msg1 db 10,13,'Sub = $'

.code
main proc

    mov ax, @data      ; initialize data segment
    mov ds, ax

    ; Add two numbers
    mov al, num1       ; load num1 into AL
    add al, num2       ; add num2 to AL
    mov sum, al     ; store result
                      
    
    
    ; Display message
    mov ah, 09h        ; DOS function 09h
    mov dx, offset msg
    int 21h 
    

    ; Display result
    ; Convert number to ASCII
    mov al, sum
    add al, 30h        ; convert to ASCII
    mov dl, al
    mov ah, 02h        ; DOS function 02h
    int 21h        
    ;sub 2 number
    mov al, num1
    sub al, num2
    mov subtr, al 
    ; Display message
    mov ah, 09h        ; DOS function 09h
    mov dx, offset msg1
    int 21h
    ; Display result
    ; Convert number to ASCII
    mov al, subtr
    add al, 30h        ; convert to ASCII
    mov dl, al
    mov ah, 02h        ; DOS function 02h
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h

main endp
end main