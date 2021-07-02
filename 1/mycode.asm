.model small
.stack 100h
.data
.code
Main proc 
    
MOV AL,'U'
MOV DL,AL
MOV AH,2
INT 21h


MOV AL,'Z'
MOV DL,AL
MOV Ah,2
INT 21h


MOV AL,'A'
MOV DL,AL
MOV Ah,2
INT 21h



MOV AL,'I'
MOV DL,AL
MOV Ah,2
INT 21h


MOV AL,'R'
MOV DL,AL
MOV Ah,2
INT 21h



Main endp
End Main