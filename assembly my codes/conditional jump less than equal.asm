.model stack
.stack 100h
.data

msg db 'Hello$'
msg1 db 'world$'
.code
main proc 
    mov ax,@data   
    mov ds,ax
    
    mov ah,7     
    mov bh,6        
    
    cmp ah,bh    
    jbe j         
    
    lea dx,msg1
     mov ah,9
     int 21h 
     
     jmp exit    
    
    
   j:
   
     lea dx,msg
     mov ah,9
     int 21h 
     exit: