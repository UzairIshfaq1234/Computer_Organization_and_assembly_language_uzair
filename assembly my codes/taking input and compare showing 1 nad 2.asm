.model stack
.stack 100h
.data
.code
main proc 
   
    mov ah,3     
    mov bh,2        
    
    cmp ah,bh    
    je t         
    
    mov dx,'2'
    mov ah,2
    int 21h
     
    jmp exit    
    
    
   t:
   
    mov dx,'1'
    mov ah,2
    int 21h
    exit: 
     
     
main endp
end main