;code that display the following output using nested loop
;@@@@@@
;@@@@@
;@@@@
;@@@
;@@
;@


.model small
.stack 100h
.data


.code
main proc
    mov ax, @data
    mov ds, ax  
    
    mov cx,6
    mov bx,6
   
    l1:
    push cx
    
    mov cx,bx
    
    l2:
      mov dx,'@'    ;char display
      mov ah,2
      int 21h
    
    loop l2
    
      mov dx,10    ;for newline
      mov ah,2
      int 21h
      
      mov dx,13
      mov ah,2
      int 21h  
     
     
      dec bx ;for inner loop
      pop cx ; for outer loop
      loop l1
    main endp
end main