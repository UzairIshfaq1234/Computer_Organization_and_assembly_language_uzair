;jno jump program
.model small
.stack 100h
.data
 str db 'pairty is 1$'
 str1 db ' parity is 0$'


 
.code                              
main proc
mov ax,@data
mov ds,ax


mov al,80h


add al,80h
jnp t
lea dx,str
mov ah,9
int 21h


jmp exit 




t: 
lea dx,str1
mov ah,9
int 21h
         
exit:


main endp
end main