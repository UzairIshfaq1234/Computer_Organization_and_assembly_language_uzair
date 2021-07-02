.model small
.stack 100h
.data
ARRAY DB '1','2','3','4','5','a','b','c','d','e' ,'1','2','3','4','5','a','b','c','d','e'
.code

main proc
    
    
MOV AX,@DATA
MOV DS,AX


MOV SI,OFFSET ARRAY 

MOV dl,[SI+0]
MOV AH,2
INT 21h


MOV dl,[SI+1]
MOV AH,2
INT 21h
            
            

MOV dl,[SI+2]
MOV AH,2
INT 21h


MOV dl,[SI+3]
MOV AH,2
INT 21h  
    
MOV dl,[SI+4]
MOV AH,2
INT 21h    
 
MOV dl,032
MOV AH,2
INT 21h  
 
 
MOV dl,[SI+5]
MOV AH,2
INT 21h


MOV dl,[SI+6]
MOV AH,2
INT 21h
            
            

MOV dl,[SI+7]
MOV AH,2
INT 21h


MOV dl,[SI+8]
MOV AH,2
INT 21h  
    
MOV dl,[SI+9]
MOV AH,2
INT 21h 



;///////////////////////////////////////    
MOV dl,010  ;newl
MOV AH,2
INT 21h     

MOV dl,013  ;back
MOV AH,2
INT 21h
  
;//////////////////////////////////  
  
MOV dl,[SI+10]
MOV AH,2
INT 21h


MOV dl,[SI+11]
MOV AH,2
INT 21h
            
            

MOV dl,[SI+12]
MOV AH,2
INT 21h


MOV dl,[SI+13]
MOV AH,2
INT 21h  
    
MOV dl,[SI+14]
MOV AH,2
INT 21h    
 
MOV dl,032
MOV AH,2
INT 21h  
 
 
MOV dl,[SI+15]
MOV AH,2
INT 21h


MOV dl,[SI+16]
MOV AH,2
INT 21h
            
            

MOV dl,[SI+17]
MOV AH,2
INT 21h


MOV dl,[SI+18]
MOV AH,2
INT 21h  
    
MOV dl,[SI+19]
MOV AH,2
INT 21h 

    
main endp
end main
