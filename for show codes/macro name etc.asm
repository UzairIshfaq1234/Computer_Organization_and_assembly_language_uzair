    print macro par
      
       lea dx,par
       mov ah,9
       int 21h 
        
      endm 
      newline macro
        
        mov dx,10
        mov ah,2
        int 21h 
        
        mov dx,13
        mov ah,2
        int 21h
        
        endm
      
      .model small
      .stack 100h
      .data
      
      str1  dw "NAME:$"
      str2 dw "  MUHAMMAD UZAIR ISHFAQ$"
       
      str3  dw "ROLL NO:$"
      str4 dw "  SP-2020-BSCS-030$"
      
      str5  dw "UNIVERSITY:$"
      str6 dw "  LAHORE GARRISON UNIVERSITY$"
      .code
       main proc 
       mov ax,@data
       mov ds,ax
       
        
        print str1 
        
        print str2
         newline
         
        print str3
         
         
        print str4
         newline 
        
        print str5
         
        print str6
        
        
          
        
        
        
        
        main endp
       
        end main