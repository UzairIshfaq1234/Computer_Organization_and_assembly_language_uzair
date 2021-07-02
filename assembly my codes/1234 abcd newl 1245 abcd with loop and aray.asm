.model small
.stack 100h
.data
abc db 'abcde'
num db '12345'

.code
main proc
    
    mov ax, @data
    mov ds, ax
    mov si, offset abc
    
    mov cx, 5
    
    abc_loop:
        mov dl, [si]
        mov ah, 2
        int 21h
        
        inc si
    
    loop abc_loop
    
    mov si, offset num
    
    mov cx, 5
    
    num_loop:
        mov dl, [si]
        mov ah, 2
        int 21h
        
        inc si
    
    loop num_loop
    
    mov dl, 10
    mov ah, 2
    int 21h
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov si, offset num
    
    mov cx, 5
    
    num_loop2:
        mov dl, [si]
        mov ah, 2
        int 21h
        
        inc si
    
    loop num_loop2
    
    mov si, offset abc
    
    mov cx, 5
    
    abc_loop2:
        mov dl, [si]
        mov ah, 2
        int 21h
        
        inc si
    
    loop abc_loop2   
   
    main endp
end main