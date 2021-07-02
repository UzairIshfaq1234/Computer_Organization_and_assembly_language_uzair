.model small
.stack 100h
.data
a db 1
b db 8
str db 'true$'
str1 db 'false$'
.code                              
main proc
mov ax,@data
mov ds,ax


mov cl,a
mov ch,b


cmp cl,5
jle t
jmp f
;if(a<=5 && b>=5) print true else print false
t:
cmp ch,5
jge t1
jmp f




t1:
lea dx,str
mov ah,9
int 21h    


mov ah,4ch
int 21h


f: 
lea dx,str1
mov ah,9
int 21h




main endp
end main