;code that display the following output using nested loop
;@
;@@
;@@@






.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax  
    
    mov cx,3
    mov bx,1
    l1:
    push cx
    
    mov cx,bx
    
    l2:
      mov dx,'@'
      mov ah,2
      int 21h
    
    loop l2
    
    mov dx,10
      mov ah,2
      int 21h
      
      mov dx,13
      mov ah,2
      int 21h
    
    
    inc bx
    pop cx
    loop l1
     
main endp
end main