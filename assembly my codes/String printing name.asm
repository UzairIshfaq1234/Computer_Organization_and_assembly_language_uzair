.model small 
.stack 100h
.data

STR DB 'Name:Muhammad Uzair Ishfaq Roll no: 030 Father name: Muhammad Ishfaq $'

.code
main proc
    
mov ax,@data
mov ds,ax


LEA dx,str
mov dx,offset str
mov ah,9
int 21h
    
 
    
    
    
main endp
End main