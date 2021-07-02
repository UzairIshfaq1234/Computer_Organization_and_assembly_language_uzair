.model small
.stack 100h
.data

arr db 6 dup ('@')

.code
main proc
    
 
    mov ax, @data
    mov ds, ax
    
    mov si, offset arr 
    mov cx, 6
    
    l:
        
        mov dx, [si]
        mov ah, 2
        int 21h
        
        inc si
        
    loop l
    
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
   
    mov si, offset arr
    mov cx, 5
    
    l1:
        
        mov dx, [si]
        mov ah, 2
        int 21h
        
        inc si
        
    loop l1
    
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov si, offset arr
    mov cx, 4
    
    l2:
        
        mov dl, [si]
        mov ah, 2
        int 21h
        
        inc si
        
    loop l2
    
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov si, offset arr
    mov cx, 3
    
    l3:
        
        mov dx, [si]
        mov ah, 2
        int 21h
        
        inc si
        
    loop l3
    
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov si, offset arr
    mov cx, 2
    
    l4:
        
        mov dx, [si]
        mov ah, 2
        int 21h
        
        inc si
        
    loop l4
    
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
    
    mov dx, '@'
    mov ah, 2
    int 21h
   
    main endp
end main