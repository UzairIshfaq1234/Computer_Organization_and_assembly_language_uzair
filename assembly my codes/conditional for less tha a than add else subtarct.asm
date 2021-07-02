.model small
.stack 100h
.data 

str db 'A is " LESS " than B thus Both are Added! $'
str1 db 'A is "GREATER" than B thus Both are Subtracted! $'
.code
main proc 
          
    mov ax,@data
    mov ds,ax
         
                  
    mov ax,2
    mov bx,7
    
    
    
    cmp ax,bx ;compare a to b
    
    jl T:     ;if a<b         note:if a is less than b
    
    
    
    
    sub ax,bx     ;subtracting a form b 
    add ax,48
    mov dx,ax
    mov ah,2
    int 21h
    
    mov dx,010    ;new line
    mov ah,2
    int 21h 
    
    mov dx,010    ;new line
    mov ah,2
    int 21h
                  ;back to start
    mov dx,008
    mov ah,2
    int 21h
     
    
    lea dx,str1   ;printing str 1 string
    mov ah,9
    int 21h
    
    
    
    jmp exit
     
     
     
    T:          ;a < b thus true
    add ax,bx 
    add ax,48
    mov dx,ax   ;adding b to a
    mov ah,2
    int 21h 
           
    mov dx,010    ;new line
    mov ah,2
    int 21h 
    
    mov dx,010    ;new line
    mov ah,2
    int 21h
                  ;back to start
    mov dx,008
    mov ah,2
    int 21h
     
    lea dx,str   ;printing str string
    mov ah,9
    int 21h
    
    
   
    
    exit:
    

   
     
     

   
 
    
    main endp
end main