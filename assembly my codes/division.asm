.model small
.stack 100h
.data
.code
main proc
 
;which value you gonna divide 50 divide by 5
mov ax,9
mov bx,4

;mul bl 
div bx  
  
  
  
aad       ;asscii adjustment after division
mov cl,al
mov ch,ah

add cl,48
add ch,48



mov bx,dx
add bx,48    ;reminder




mov dl,ch                 
mov ah,2
int 21h  
    
    

mov dl,cl                 
mov ah,2
int 21h  
        
mov dl,010
mov ah,2     ;newl
int 21h    
    

mov dl,013
mov ah,2      ;move back
int 21h

mov dx,bx     ;reminder
mov ah,2
int 21h
    
    
    
main endp
end main