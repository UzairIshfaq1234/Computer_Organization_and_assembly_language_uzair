.model small
.stack 100h
.data
ARRAY DB '1','2','3','4','5'
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
    
    
    
    
main endp
end main
