;input string and displaying it using macros 
      newline macro
        
        mov dx,10
        mov ah,2
        int 21h 
        
        mov dx,13
        mov ah,2
        int 21h
        
      endm   
      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      
      inputofstr macro
        mov si,offset str
     
        l:
        mov ah,1
        int 21h
    
        cmp al,13
        je  print2
    
    
        mov [si],al
        inc si
        jmp l
    
    
    
        print2: 
    
        print
        
        
        
        
        
     endm 
      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      
    print macro  
    
    newline
    
     
    lea dx,str
    mov ah,9
    int 21h 
        
    endm  
      
      .model small
      .stack 100h
      .data
      
      ;str1  dw "ENTER YOUR NAME:$"
      str db 100 dup ('$')
       

      .code
      
       main proc 
       mov ax,@data
       mov ds,ax 
       
       
     
       ;print str1 
       newline
       
       inputofstr
                  
       
           
                  
                  
                  
                  
                  
                  
        
    
       
         

        
        
          
        
        
        
        
        main endp
       
        end main