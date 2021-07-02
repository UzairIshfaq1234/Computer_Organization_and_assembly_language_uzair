hollow_square  macro rows,column,times
    
    ;step 2 to set the cursor position  
mov ah, 02 ; SET CURSOR POSITION
mov bh, 0   ;set the page number
mov dh,rows ;rows
mov dl,column    ;column
int 10h   


; step 3 print a character in graphics 
mov ah,09   ; WRITE CHARACTERS AND ITS ATTRIBUTES
mov al,'$'
mov bl, 00001111B  ;colors
mov bh,0
mov cx,times
int 10h 


endm




.model small
.stack 100h
.data
.code 
main proc


     hollow_square 10,10,7  ;first row print
     
     hollow_square 11,10,1 ;single $ print left
     
      hollow_square 11,16,1 ;single $ print right
      
     hollow_square 12,10,1 ;single $ print left
     
      hollow_square 12,16,1 ;single $ print right 
      
      hollow_square 13,10,1 ;single $ print left
     
      hollow_square 13,16,1 ;single $ print right 
      
        hollow_square 14,10,1 ;single $ print left
     
      hollow_square 14,16,1 ;single $ print right
      
        hollow_square 15,10,1 ;single $ print left
     
      hollow_square 15,16,1 ;single $ print right 
      
       hollow_square 16,10,7  ;last row print










         
         


   main endp
end main