;*******
; *****
;  ***
;   * 


.model small
.stack 100h
.data


.code
main proc
 mov cx,4 ;outer loop counter;rows 
 mov bx,0 ;inner loop counter ;column;space
 mov si,7  ;inner1 loop counter ;column;star 
 
 outer:
 push cx 
 cmp bx,0
 je skip_space 
 
 mov cx,bx
 inner:  ;space
 
  mov dx,32
  mov ah,2
  int 21h
           
           
 loop inner
 skip_space: 
 mov cx,si 
 
 inner1:  ;star
    
  mov dx,'*'
  mov ah,2
  int 21h
           
 loop inner1 
 
inc bx ;space
dec si ;star
dec si ;star 
pop cx ;outer
mov dx,10
  mov ah,2
  int 21h
  mov dx,13
  mov ah,2
  int 21h
loop outer
    
    
main endp
end main