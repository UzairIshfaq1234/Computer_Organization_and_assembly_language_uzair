.model stack
.stack 100h
.data
.code
main proc 
   
    mov ax,2    
    mov bx,7      
     
    l:
    
    cmp ax,bx    
    jle t 
                
    jmp exit    
    
    
   t: 
   
    mov dx,'1'
    mov ah,2
    int 21h  
    
    add ax,1
    
    jmp l
 
    exit: 
     
     
main endp
end main