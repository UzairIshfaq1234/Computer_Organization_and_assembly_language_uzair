.model stack
.stack 100h
.data

str db 'As x is less than y so,Addition performed$'
str1 db 'As x is greater than y so,subtraction is done$'
.code
main proc 
    mov ax,@data    ;data segment acces
    mov ds,ax 
    
    mov ah,1
   int 21h
    
   mov cl,al
   
   ;sub cl,48 
   
    mov dl,010
    mov ah,2
    int 21h
    
     mov dl,013
    mov ah,2
    int 21h
    
   mov ah,1
   int 21h
    
   mov ch,al 
   ;sub ch,48
   
   
    
    
  
   
   
    
    cmp cl,ch    ;if (a<b)           
    jb j         ;(conditional jump) 
    
    
     sub cl, ch
    add cl, 48
              
              
      mov dl,010
    mov ah,2
    int 21h
    
    mov dl,013
    mov ah,2
    int 21h 
    
    mov dl, cl
    
    mov ah, 2
    int 21h 
    
     mov dl,010
    mov ah,2
    int 21h
    
    mov dl,013
    mov ah,2
    int 21h 
    
   
   
     lea dx,str1
     mov ah,9
     int 21h
     
     
     
     jmp exit    ;(unconditional jump)
    
    
   j: 
   
   
     
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
    
     mov dl,010
    mov ah,2
    int 21h
    
    mov dl,013
    mov ah,2
    int 21h
    
    
    lea dx,str
     mov ah,9
     int 21h  
     exit: