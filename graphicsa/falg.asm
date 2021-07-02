;draw a square and print @ in the middle of the solid square in graphics
.model small
.stack 100h
.data
.code
main proc


;step1 to draw a shape      //white
mov ah, 6
mov al, 0 ;no of line
mov bh, 11111111B




mov ch,15 ; starting row
mov cl,10 ; starting column
mov dh,30 ;ending row
mov dl,20 ;ending column
int 10h 
 
;step1 to draw a shape  //green
mov ah, 6
mov al, 0 ;no of line
mov bh, 00101111B




mov ch,15 ; starting row
mov cl,20 ; starting column
mov dh,30 ;ending row
mov dl,60;ending column
int 10h  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;creasent;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;step1 to draw a shape  //whit dot
mov ah, 6
mov al, 0 ;no of line
mov bh, 11111111B




mov ch,30 ; starting row  ;hight
mov cl,40 ; starting column
mov dh,16 ;ending row    ;down
mov dl,40;ending column
int 10h                    ;widhth

;step2 to draw a shape  //whit dot
mov ah, 6
mov al, 0 ;no of line
mov bh, 11111111B




mov ch,30 ; starting row  ;hight
mov cl,40 ; starting column
mov dh,18 ;ending row    ;down
mov dl,30;ending column
int 10h                    ;widhth 
 
 
 
 
 
 
 
 
mov dl,' '
int 21h
main endp
end main