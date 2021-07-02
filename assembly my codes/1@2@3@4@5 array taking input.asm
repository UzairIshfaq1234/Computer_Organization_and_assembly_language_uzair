.model small
.stack 100h
.data     

1_@_pattern db '#########'

.code
main proc
    
    mov ax, @data                  
    mov ds, ax                     
    
    mov si, offset 1_@_pattern
    
    mov cx, 5
    
    pattern_input:
        
        mov ah, 1
        int 21h
        mov [si], al
  
        inc si
        
        loop pattern_input
   
   mov cx, 4
   mov si, 0
   
   mov dl, 10
   mov ah, 2
   int 21h
   
   mov dl, 13
   mov ah, 2
   int 21h
   
   pattern_output:
   
        mov dl, [si]
        mov ah, 2
        int 21h
        
        mov dl, '@'
        mov ah, 2
        int 21h
        
        inc si
        
        loop pattern_output
  
  mov dl, '5'
  mov ah, 2
  int 21h
  
    main endp
end main