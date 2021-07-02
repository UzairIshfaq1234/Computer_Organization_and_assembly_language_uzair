.model small
.stack 100h
.data

var1 db 'U'
var2 db 'Z'

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov ah, var1            ; putting 'U' in ah
    xchg var2, ah           ; swapping var2 ('U') and ah('Z') values
    mov var1, ah            ; putting 'Z' in var 1
    
    mov dl, var1
    mov ah, 2
    int 21h
    
    mov dl, 10
    mov ah, 2
    int 21h
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov dl, var2
    mov ah, 2
    int 21h
    
    main endp
end main   