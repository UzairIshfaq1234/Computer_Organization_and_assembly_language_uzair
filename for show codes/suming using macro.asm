    additi macro par(bx,ax)
      
       add bx,ax
       add bx,48
       
       
    endm 
    
    suming macro par(bx)
      
       mov dx,bx
       mov ah,2
       int 21h
       
       
       
       
    endm 
    
  
      
      
      .model small
      .stack 100h
      .data
        

    
      .code
       main proc 
       mov ax,@data
       mov ds,ax  
       
       mov bx,3
       mov ax,3 
       
       additi
       

       
       suming
       
        
      main endp
       
       
        end main