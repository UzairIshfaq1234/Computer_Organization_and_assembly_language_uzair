;draw a square and print @ in the middle of the solid square in graphics
.model small
.stack 100h
.data
.code
main proc






;step1 to draw a shape
mov ah, 6
mov al, 10 ;no of line
mov bh, 01001011B


mov ch,10 ; starting row
mov cl,15 ; starting column
mov dh, 20 ;ending row
mov dl,30 ;ending column
int 10h   


    ;step 2 to set the cursor position  
mov ah, 02 ; SET CURSOR POSITION
mov bh, 0   ;set the page number
mov dh,15 ;rows
mov dl,20    ;column
int 10h   




; step 3 print a character in graphics 
mov ah,09   ; WRITE CHARACTERS AND ITS ATTRIBUTES
mov al,'@'
mov bl, 10110000B  ;colors
mov bh,0
mov cx,7
int 10h 
         
         




mov dl,' '
int 21h
main endp
end main