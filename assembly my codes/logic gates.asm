.model small 
.stack 100h
.data
.code
main proc
    mov bl,'1'
    mov bh,'2'
    and bl,bh
    mov dl,bl
    mov ah,2
    int 21h  
    
     mov bl,'1'
    mov bh,'2'
    or bl,bh
    mov dl,bl
    mov ah,2
    int 21h
    
    mov bl,'1'
    mov bh,'2'
    xor bl,bh
    mov dl,bl
    mov ah,2
    int 21h   
    
    mov bl,'1'
    ;mov bh,'2'
    not bl
    mov dl,bl
    mov ah,2
    int 21h
    
    main endp
end main