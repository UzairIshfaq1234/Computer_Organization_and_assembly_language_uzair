

.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
    MOV BX,1
    MOV CX,4
    
   L1:
    PUSH CX
    MOV AH,2
    ;MOV DL,32
   ;L2:
    ;INT 21H
    ;LOOP L2   
   
   
   MOV CX,BX        
   MOV DL,'*' 
  L3:
   INT 21H
   LOOP L3
   
   MOV AH,2
   MOV DL,10
   INT 21H
   MOV DL,13
   INT 21H
   
   inc BX ;FOR REVERSE PYRAMID
   
   ;dec BX 
    
   
   
   POP CX
   
   LOOP L1      
                               
       
    
    EXIT:
   
    MAIN ENDP
END MAIN    