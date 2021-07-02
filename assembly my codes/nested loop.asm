;solve the following problem


;*@@@
;*@@
;***@




.model small
.stack 100h
.data
 temp1 dw 1
 temp2 dw 1
.code
main proc
    mov ax, @data
    mov ds, ax  
    
    mov cx,3 ; outer loop
    mov bx,4 ; inner loop
   
    l1:
    push cx
    
    mov cx,bx
    
    l2: 
      mov ax,temp2
      cmp temp1,ax
      je  j
     mov dx,'@'    ;char display
      mov ah,2
      int 21h 
       
      jmp skip 
      j:
      mov dx,'*'    ;char display
      mov ah,2
      int 21h 
            
    ;  inc temp1 
      
     skip:
        inc temp2 
        
    loop l2
    
      mov dx,10    ;for newline
      mov ah,2
      int 21h
      
      mov dx,13
      mov ah,2
      int 21h  
     
      mov temp2,1
      mov temp1,1
     ;dec bx ;for inner loop
      pop cx ; for outer loop
      loop l1
    main endp
end main