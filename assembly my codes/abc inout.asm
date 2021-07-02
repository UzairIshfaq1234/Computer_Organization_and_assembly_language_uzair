
 
;write a code that takes an input first name as an input and displays it
 
    
.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    
    mov cl,al 
    
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
    
    mov ah,1
    int 21h
    
    mov cl,al 
    
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
    
    mov ah,1
    int 21h
    
    mov cl,al 
    
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