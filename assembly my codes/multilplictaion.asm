.model small
.stack 100h
.data
.code
main proc

mov al,2
mov bl,3

mul bl 

aam       ;asscii adjustment after multiplication
mov cl,al
mov ch,ah

add cl,48
add ch,48



mov dl,ch                 
mov ah,2
int 21h  
    
    

mov dl,cl                 
mov ah,2
int 21h  
        
    
    
    
    
    
main endp
end main