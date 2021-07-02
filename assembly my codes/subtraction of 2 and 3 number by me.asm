.model small
.stack 100h
.data
.code
main proc
    
mov  bl,7
mov  cl,2 
mov  al,1

sub bl,cl 
sub bl,al
add bl,48

mov dl,bl
mov ah,2
int 21h


    
    
    
    
    
    
    
    
    
main endp
end main