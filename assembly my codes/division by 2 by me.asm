.model small
.stack 100h
.data
.code
main proc
    
mov ax,15
mov bx,2

div bx ;divide bx with ax

aad    ;aseembly adjustment after division

mov ch,ah
mov cl,al

add ch,48
add cl,48

mov bx,dx  ;reminder
add bx,48




 
mov dl,'Q'   ;printing Q
mov ah,2
int 21h

mov dl,'='   ;printing =
mov ah,2
int 21h

 
 
 
mov dl,ch   ;printing first
mov ah,2
int 21h
   
    
mov dl,cl   ;printing second
mov ah,2
int 21h   
    
    
mov dl,010   ;newl
mov ah,2
int 21h    
    
    
mov dl,013   ;back
mov ah,2
int 21h


mov dl,'R'   ;printing Q
mov ah,2
int 21h

mov dl,'='   ;printing =
mov ah,2
int 21h   
    
mov dl,bl     ;printing reminder
mov ah,2
int 21h    
    
    
    
    
    
    
    
    
main endp
end main