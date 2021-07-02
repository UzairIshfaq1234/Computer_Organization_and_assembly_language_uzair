.model small
.stack 100h
.data
.code 
main proc




;step 2 to set the cursor position  
mov ah, 02 ; SET CURSOR POSITION
mov bh, 0   ;set the page number
mov dh,5
mov dl,8
int 10h
; step 3 print a character in graphics 
mov ah,09   ; WRITE CHARACTERS AND ITS ATTRIBUTES
mov al,'*'
mov bl, 00001010B
mov bh,0
mov cx,1
int 10h
 
;step 2 to set the cursor position 
mov ah, 02 ; SET CURSOR POSITION
mov bh, 0   ;set the page number
mov dh,6
mov dl,8
int 10h
; step 3 print a character in graphics 
mov ah,09   ; WRITE CHARACTERS AND ITS ATTRIBUTES
mov al,'*'
mov bl, 00001010B
mov bh,0
mov cx,2
int 10h
;step 2 to set the cursor position 
mov ah, 02 ; SET CURSOR POSITION
mov bh, 0   ;set the page number
mov dh,7
mov dl,8
int 10h
; step 3 print a character in graphics 
mov ah,09   ; WRITE CHARACTERS AND ITS ATTRIBUTES
mov al,'*'
mov bl, 00001010B
mov bh,0
mov cx,3
int 10h          
;step 2 to set the cursor position 
mov ah, 02 ; SET CURSOR POSITION
mov bh, 0   ;set the page number
mov dh,8
mov dl,8
int 10h
; step 3 print a character in graphics 
mov ah,09   ; WRITE CHARACTERS AND ITS ATTRIBUTES
mov al,'*'
mov bl, 00001010B
mov bh,0
mov cx,4
int 10h
   main endp
end main