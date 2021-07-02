.model small
.stack 100h
.data
.code
main proc 
;---------------x   
Mov dx,'X'
MOV ah,2
INT 21h   
;-----------------newl    
Mov dx,010
MOV ah,2
INT 21h 

Mov dx,010
MOV ah,2
INT 21h 

Mov dx,010
MOV ah,2
INT 21h 
      


;------------------back   
Mov dx,08
MOV ah,2
INT 21h 

;---------------y   
Mov dx,'Y'
MOV ah,2
INT 21h
;-----------------newl  
Mov dx,010
MOV ah,2
INT 21h 

Mov dx,010
MOV ah,2
INT 21h 
                                     
 
Mov dx,010
MOV ah,2
INT 21h 


;------------------back    
Mov dx,08
MOV ah,2
INT 21h 


;---------------z   
Mov dx,'Z'
MOV ah,2
INT 21h   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
main endp
end main