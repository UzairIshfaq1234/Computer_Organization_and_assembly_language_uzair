.model small
.stack 100h
.data
str db 'values are equal$'
str1 db 'values are not equal$'
.code
main proc
   mov ax,@data
   mov ds,ax
   
   mov ah,1
   int 21h
   
   mov cl,al
   
   
   mov ah,1
   int 21h
   
   mov dl,al
   
   
   cmp dl,cl
   je true
   jne f
   true:
   lea dx,str
   mov ah,9
   int 21h
   jmp exit
   f:
   lea dx,str1
   mov ah,9
   int 21h
   jmp exit
   
   exit:
    
    main endp
end main