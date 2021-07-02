.model small
.stack 100h
.data
.code
main proc  
 

MOV al,4 ;intilizing values
MOV bl,2
Mov cl,1

add bl,al;addition
add bl,cl

add bl,48



MOV dl,bl
MOv ah,2
INT 21h



  
main endp  
end main
