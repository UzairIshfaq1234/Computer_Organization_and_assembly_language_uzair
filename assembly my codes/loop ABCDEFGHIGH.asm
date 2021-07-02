.model small
.stack 100h
.data
arr db 'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T',,'U',,'V','W','X','Y','Z'
.code 
main proc
    mov ax,@data
    mov ds,ax 
    
    mov si,offset arr
    mov cx,26
    l:
    
    mov dl,[si]
    mov ah,2
    int 21h
    inc si
    loop l 
    
     
    
    
   main endp
end main