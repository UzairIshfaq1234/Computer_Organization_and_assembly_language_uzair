;program to print name with roll no!
.model small
.stack 100h
.data
.code
main proc  
 
;_____________________________________NAME
;-----------N
MOV dl,'N'
MOV ah,2
INT 21h

;-----------A
MOV dl,'A'
MOV ah,2
INT 21h

;-----------M
MOV dl,'M'
MOV ah,2
INT 21h

;-----------E
MOV dl,'E'
MOV ah,2
INT 21h 

;-----------space
MOV dl,032
MOV ah,2
INT 21h

;-----------space
MOV dl,032
MOV ah,2
INT 21h

;_____________________________________________________ROLL NO
;-----------R
MOV dl,'R'
MOV ah,2
INT 21h

;-----------o
MOV dl,'O'
MOV ah,2
INT 21h

;-----------o
MOV dl,'L'
MOV ah,2
INT 21h

;-----------L
MOV dl,'L'
MOV ah,2
INT 21h


;-----------space
MOV dl,032
MOV ah,2
INT 21h
;-------------------------------------------------
;-----------N
MOV dl,'N'
MOV ah,2
INT 21h

;-----------O
MOV dl,'O'
MOV ah,2
INT 21h




;-----------space
MOV dl,032
MOV ah,2
INT 21h 


;-----------break
MOV dl,010
MOV ah,2
INT 21h

;-----------O
MOV dl,013
MOV ah,2
INT 21h
;----------------------------------------UZAIR
;-----------U
MOV dl,'U'
MOV ah,2
INT 21h

;-----------Z
MOV dl,'Z'
MOV ah,2
INT 21h

;-----------A
MOV dl,'A'
MOV ah,2
INT 21h

;-----------I
MOV dl,'I'
MOV ah,2
INT 21h
    
;-----------R
MOV dl,'R'
MOV ah,2
INT 21h 


;-----------space
MOV dl,032
MOV ah,2
INT 21h 











;----------------------------------------030
;-----------space
MOV dl,'0'
MOV ah,2
INT 21h

;-----------space
MOV dl,'3'
MOV ah,2
INT 21h

;-----------space
MOV dl,'0'
MOV ah,2
INT 21h

  
main endp  
end main
