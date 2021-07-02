

.MODEL SMALL
.STACK 100H
.DATA

var1 dw 0 
var2 dw 3

.CODE


MAIN PROC
     
    MOV BX,3
    MOV CX,3
    
    
    
    
   
    
   L1: 
   

   
   PUSH CX 
  
    
    
   MOV AH,2
     
   
   
   MOV CX,BX 
   
   cmp CX,3
   JE last1
   
   cmp CX,2
   JE last2
   
   cmp CX,1
   JE last3
   
   
  
   
   last1:
   
   MOV DL,053
   MOV AH,2
   INT 21H
   
   MOV DL,032  ;;;;;;;
   MOV AH,2
   INT 21H  
   
   MOV DL,049
   MOV AH,2
   INT 21H 
   
   MOV DL,048
   MOV AH,2
   INT 21H 
   
   MOV DL,032 ;;;;;;
   MOV AH,2
   INT 21H 
   
   MOV DL,049
   MOV AH,2
   INT 21H  
   
   MOV DL,053
   MOV AH,2
   INT 21H 
   
   jmp erba
   
   
  
   loop last1
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   last2:
   
   MOV DL,054
   MOV AH,2
   INT 21H
   
   MOV DL,032  ;;;;;;;
   MOV AH,2
   INT 21H  
   
   MOV DL,049
   MOV AH,2
   INT 21H 
   
   MOV DL,050
   MOV AH,2
   INT 21H 
   
 
   
   jmp erba
   
   
  
   loop last2   
   
;;;;;;;;;;;;;;;;;

   last3:
   
   MOV DL,055
   MOV AH,2
   INT 21H
   

 
   
   jmp erba
   
   
  
   loop last3 


   
   
   erba:
   
 
   
   MOV DL,010
   MOV AH,2
   INT 21H
   
   MOV DL,013
   MOV AH,2
   INT 21H
 
   
   dec BX ;FOR REVERSE PYRAMID
   
  
    
   
   
   POP CX
   
   LOOP L1      
                               
       
    
    EXIT:
   
    MAIN ENDP
END MAIN  