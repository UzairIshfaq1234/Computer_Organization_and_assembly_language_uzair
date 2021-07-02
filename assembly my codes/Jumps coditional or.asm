.model small
.stack 100h
.data

var1 db 17
var2 db 19

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    ;if(ax==0 or bx==0) 
    
    mov ax,0
    mov bx,0
      
 
    
    cmp ax,0 
    je t
         
         
    cmp bx,0 
    je t
     
    jmp f
    
     
    t:     ;cx=10 
    
    mov cx,20
    mov dx,cx
    mov ah,2
    int 21h
    jmp exit
    
    f:     ;cx=20
    mov cx,10
    mov dx,cx
    mov ah,2
    int 21h  
    
    exit:   
    
    
 
    
    main endp
end main  