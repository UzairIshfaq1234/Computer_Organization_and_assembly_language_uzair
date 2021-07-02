                                          
.model small
.stack 100h
.data
var1 dw "FALG OF RUSSIA$"
.code
main proc


 
 
;step1 to draw a shape  //white
mov ah, 6
mov al, 0 ;no of line
mov bh, 11111111B




mov ch,20 ; starting row
mov cl,20 ; starting column
mov dh,25 ;ending row  ;increase hight
mov dl,60;ending column ;increase width
int 10h  


;step2 to draw a shape  //blue
mov ah, 6
mov al, 0 ;no of line
mov bh, 10000B




mov ch,26 ; starting row
mov cl,20 ; starting column
mov dh,31 ;ending row  ;increase hight
mov dl,60;ending column ;increase width
int 10h  
 
;step2 to draw a shape  //red
mov ah, 6
mov al, 0 ;no of line
mov bh, 01001111B




mov ch,32 ; starting row
mov cl,20 ; starting column
mov dh,37 ;ending row  ;increase hight
mov dl,60;ending column ;increase width
int 10h




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
mov ax, @data
mov ds, ax
     

                       
mov dx,032
mov ah,2
int 21h 

mov dx,032
mov ah,2
int 21h           
        
mov dx,032
mov ah,2
int 21h           
        
mov dx,032
mov ah,2
int 21h 

mov dx,10
mov ah,2
int 21h

mov dx,10
mov ah,2
int 21h          
                  
           
           
LEA dx,var1

mov ah,9


 
 
 

int 21h
main endp
end main