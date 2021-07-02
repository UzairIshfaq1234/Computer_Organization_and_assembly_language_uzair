
.model small
.stack 100h
.data
.code
mov cx,4
mov bx,1
l2:


add bx,48

mov dx,bx
mov ah,2
int 21h

mov dx,0Ah
mov ah,2
int 21h

mov dx,0Dh
mov ah,2
int 21h

sub bx,48
inc bx


loop l2




exit:
