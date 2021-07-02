.model small
.stack 100h
.data
.code
main proc  
 

MOV al,'4' ;intilizing values
MOV bl,'2'


add bl,al;addition
sub bl,48;subtracting to reach back to ASCII code of 6



MOV dl,bl
MOv ah,2
INT 21h



  
main endp  
end main
