.model stack
.stack 100h
.data

msg db 'Uzair$'
msg1 db 'Ishfaq$'
.code
main proc 
    mov ax,@data   
    mov ds,ax
    
    mov ah,2     
    mov bh,6        
    
    cmp ah,bh    
    jge j         
    
    lea dx,msg1
     mov ah,9
     int 21h 
     
     jmp exit    
    
    
   j:
   
     lea dx,msg
     mov ah,9
     int 21h 
     exit: 
     
     
main endp
end main