;2x-y formula using marcros
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
    
        mov ah,1 ;input   
        int 21h 

        mov cl,al   ;puting value in x 



        mov dl,010
        mov ah,2
        int 21h

        mov dl,013
        mov ah,2
        int 21h
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;2ndinput        
        mov ah,1 ;input   
        int 21h 

        mov bl,al   ;puting value in bl y



        mov dl,010
        mov ah,2
        int 21h

        mov dl,013
        mov ah,2
        int 21h
               
               
        mov al,cl
        mov ch,2
              
        mul ch
        
        sub al,48
        
        sub al,bl
        
        add al,48 
        
        
   
        mov dl,al
        mov ah,2
        int 21h 
       
 
        ;mov dl,cl
        ;mov ah,2
        ;int 21h 
        
        ;mov dl,bl
        ;mov ah,2
        ;int 21h
         
        
      
      endm
      
      
   
        
     
        
        
        
        
        
        
      
      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      
  
      
      .model small
      .stack 100h
      .data
      
      
       var1 db 0
       

      .code
      
       main proc 
       mov ax,@data
       mov ds,ax 
       
       
       inputofstr
                  
       
           
                  
                  
                  
                  
                  
                  
        
    
       
         

        
        
          
        
        
        
        
        main endp
       
        end main