;org 100h
.model small
.stack 100h
.data
.code
mov cx,1
mov bx,1
l1:
mov cx,bx

l2: 


 
cmp cx,5
jz exit

 
mov dx,cx
add dx,48
mov ah,2
int 21h




loop l2

inc bx
mov dl,10
int 21h
mov dl,13
int 21h

loop l1

exit:
;ret