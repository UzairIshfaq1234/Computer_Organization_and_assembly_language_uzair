;y*x/w

inputdata macro  
    
    lea dx,strx ;string for x
    mov ah,9
    int 21h
    
    
    mov ah,1  
    int 21h
    
    mov x,al ;taking input of x 
    add x,48
    
    mov dl,010
    mov ah,2
    int 21h
    
    
    mov dl,013
    mov ah,2
    int 21h 
    
    
    ;lea dx,stry ;string for y
    ;mov ah,9
    ;int 21h
    
    ;mov ah,1  
    ;int 21h
    
    ;mov y,al ;taking input of y
    ;sub y,48
    
    ;mov dl,010
    ;mov ah,2
    ;int 21h
    
    
    ;mov dl,013
    ;mov ah,2
    ;int 21h  
    
    lea dx,strw ;string for w
    mov ah,9
    int 21h      
          
          
    mov ah,1  
    int 21h
    
    mov w,al ;taking input of w 
    add w,48
    
    mov dl,010
    mov ah,2
    int 21h
    
    
    mov dl,013
    mov ah,2
    int 21h  
    
    
    
    ;;;;;;;;;;;;;;;;;;applying formula;;;;;;;;;
    
    mov al,w
    
    div x      ;dividing
    
    
    mov alldiv,al 
    add alldiv,48
                 
                 
    ;mov al,y
    
    ;mul alldiv
    
    
    
   
    
    
    
    
    
    
    
    
      
      
      
      
    

    ;mov cl,al
    ;mov var1,bl 
    
    ;div var1
    
    ;sub al,48
    
    mov dl,alldiv
    mov ah,2
    int 21h
    
    
    
    
  endm  
    
    



.model small
.stack 100h
.data
 
x db ? 
y db ?
w db ?
alldiv db ?  

strx db "Input value in x:$"
stry db "Input value in y:$"
strw db "Input value in w:$"
 
.code
main proc
    
mov ax,@data
mov ds,ax

   
inputdata   
    
    
    
    
    
    
main endp
end main