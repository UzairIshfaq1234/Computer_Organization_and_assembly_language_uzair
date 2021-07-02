.model small
.stack 100h
.data
.code
main proc  
 
;subtraction by 2 
MOV al,4 ;intilizing values
MOV bl,2


sub al,bl;addition
add al,48



MOV dl,al
MOv ah,2
INT 21h



  
main endp  
end main
