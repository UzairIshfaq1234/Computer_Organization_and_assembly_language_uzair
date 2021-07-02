.model small
.stack 100h
.data
n dw 5
nl db 0ah, 0dh, 024h

.code 

main proc   
    
mov ax,@data
mov ds,ax  


mov cx, n
sub cx, 1

mov ah, 2
l1:
mov dl, ' '
int 21h
loop l1

mov dl, '*'
int 21h
mov ah, 9
lea dx, nl
int 21h

mov di, 1
mov bx, 1
xor cx,cx
mov cx, n
sub cx, 2
l2:

mov si, cx

sp1:
dec si
mov ah, 2
mov dl, ' '
int 21h
cmp si, 0
jg sp1

mov ah, 2
mov dl, '*'
int 21h

insp:
mov ah, 2
mov dl, ' '
int 21h
dec di
cmp di, 0
jg insp

mov ah, 2
mov dl, '*'
int 21h

add bx, 2
mov di, bx

mov ah, 9
lea dx, nl
int 21h
loop l2

xor cx, cx
mov bx, n
sub bx, 1
mov cx, n
add cx, bx
up:
mov ah, 2
mov dl, '*'
int 21h
loop up
ret 

  main endp
end main