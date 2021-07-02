;@@@@
;*@@@
;**@@
;***@
;****



.model small
.stack 100h
.data
 temp1 dw 1
 temp2 dw 0
   
 
 
.code
main proc
    mov ax, @data
    mov ds, ax  
    
    mov cx,7 ; outer loop
    mov bx,6 ; inner loop
   
    l1:
    push cx
    
    mov cx,bx
    
    l2:
       
      mov ax,temp2
      cmp temp1,ax     ;stars
      jle  j 
      
      mov dx,'@'    ;char display
      mov ah,2
      int 21h 
       
      jmp skip 
      
      j:  
      mov dx,'*'    ;char display
      mov ah,2
      int 21h
            
    
      
     skip:
        inc temp1  
        
        
    loop l2
    
      mov dx,10    ;for newline
      mov ah,2
      int 21h
      
      mov dx,13
      mov ah,2
      int 21h  
     
      mov temp1,1 
      inc temp2
     
     
      pop cx ; for outer loop
      loop l1
    main endp
end main
