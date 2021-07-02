.model small
.stack 100h
.data
.code
main proc

mov bl,4
mov cl,3
;mov al,1

add bl,cl 
;add bl,al

add bl,48

mov dl,bl 
mov ah,2
int 21h 
    
    
    
    
    
main endp

end main