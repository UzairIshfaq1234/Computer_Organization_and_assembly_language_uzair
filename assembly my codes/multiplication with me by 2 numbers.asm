.model small
.stack 100h
.data
.code
main proc
 mov al,6
 mov bl,2
 
 MUL bl
 aam
 
 mov ch,ah
 mov cl,al
 
 
 
 
 
 mov dl,ch
 add dl,48
 mov ah,2
 int 21h



  
 mov dl,cl
 add dl,48
 mov ah,2
 int 21h






Main Endp 
End main