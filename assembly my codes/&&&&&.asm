
;question print


;&
;&&
;&&&
;&&&&   
.model small
.stack 100h
.data
.code
main proc  
 


MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,010
MOV ah,2
INT 21h


MOV dl,013
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,010
MOV ah,2
INT 21h


MOV dl,013
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,010
MOV ah,2
INT 21h

MOV dl,013
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h


MOV dl,013
MOV ah,2
INT 21h

MOV dl,010
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h

MOV dl,'&'
MOV ah,2
INT 21h


  
main endp  
end main