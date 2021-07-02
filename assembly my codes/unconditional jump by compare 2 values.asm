.model small
.stack 100h
.data
    
    var1 db '1'
    var2 db '2'
    
.code
main proc
    
    mov ax,@data
    mov ds,ax 
    
    ;else  comparing can 
    ; mov bl,var1
    ; mov cl,var2
    ; cmp var1,var2
     
    
      
    mov bl,var2 
      
    cmp var1,bl
    
    jle t 
    
    mov dl,'F'
    mov ah,2     ;fasle
    int 21h 
    
    
    
    
    jmp exit
      
      
      
    t:            
    mov dl,'T'
    mov ah,2     ;true
    int 21h 
    
    
    exit: 
 
     
     
    
    
main endp
end main
    