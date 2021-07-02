print macro par
      
       lea dx,par
       mov ah,9
       int 21h 
       ; newline
      endm 
      
      
      .model small
      .stack 100h
      .data
      
      str1  dw "string 1$"
      str2 dw "string 2$"
      str3 dw "string 3$"
      .code
       main proc 
       mov ax,@data
       mov ds,ax
       
        
        print str1
      
      call newline 
        print str2
     call   newline
        print str3
        
        main endp
       newline proc
        
        mov dx,10
        mov ah,2
        int 21h 
        
        call start
        ret
        
       newline endp 
       
        start proc
           mov dx,13
        mov ah,2
        int 21h 
         ret   
            start endp
       
       
        end main