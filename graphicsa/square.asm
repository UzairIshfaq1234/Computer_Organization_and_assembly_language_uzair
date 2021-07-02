;for solid square in graphics
.model small
.stack 100h
.data
.code
main proc






;step1 to draw a shape
mov ah, 6
mov al, 10 ;no of line
mov bh, 01001011B


mov ch,10 ; starting row
mov cl,15 ; starting column
mov dh, 20 ;ending row
mov dl,30 ;ending column
int 10h
         
         




mov dl,' '
int 21h
main endp
end main