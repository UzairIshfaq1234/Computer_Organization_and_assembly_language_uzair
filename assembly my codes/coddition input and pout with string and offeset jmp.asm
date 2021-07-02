.model small
.stack 100h
.data

str db 100 dup ('$')
.code
main proc
    
    mov ax,@data
    mov ds,ax 
    
    mov si,offset str
     
    l:
    mov ah,1
    int 21h
    
    cmp al,13
    je  print
    
    
    mov [si],al
    inc si
    jmp l
    
    
    
    print: 
    
    mov dl,10
    mov ah,2
    int 21h   
    
    mov dl,13
    mov ah,2
    int 21h
    
     
    lea dx,str
    mov ah,9
    int 21h
      
 
 
 
 
      


main endp
end main