
 
;Task
;take 2 inputs and display and then after changing and display
 
    
.model small
.stack 100h
.data
.code
main proc
    
   mov ah,1
   int 21h
    
   mov cl,al
   
   ;sub cl,48
    
   mov ah,1
   int 21h
    
   mov ch,al 
   ;sub ch,48
    
    
   add cl,ch
   sub cl,48
     
    
    mov dl,010
    mov ah,2
    int 21h
    
    mov dl,013
    mov ah,2
    int 21h
    
    
   mov dl,cl
   mov ah,2
   int 21h
    
  



 
 
 
 
 
    
    
    
    
main endp
end main