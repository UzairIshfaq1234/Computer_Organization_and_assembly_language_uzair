;first half of hallow diamond


.model small
.stack 100h
.data 
space1 dw 4
star1  dw 1 
space2 dw 0
star2  dw 0

;;;;;;;;;

space3 dw 1
star3  dw 1 
space4 dw 5
star4  dw 1
.code


main proc
    mov ax,@data
    mov ds,ax
  
    mov cx, 5 ; for outer loop


    
    outer_loop:
        push cx
        
        cmp space1,0
        je skip_space1_loop
        mov cx, space1
        space1_loop:
        
            mov dx,32
            mov ah,2
            int 21h
        
        loop space1_loop


       skip_space1_loop:
        mov cx, star1
        star1_loop:
        
            mov dx,'*'
            mov ah,2
            int 21h
        
        loop star1_loop
        
        cmp space2,0
        je skip_space2
         mov cx, space2
        space2_loop:
        
            mov dx,32
            mov ah,2
            int 21h
        
        loop space2_loop  
        skip_space2: 
        
        cmp star2,0
        je skip_star2
               jmp_to_star2_loop: 
               mov cx, star2
       star2_loop:
        
            mov dx,'*'
            mov ah,2
            int 21h
        
        loop star2_loop  
        skip_star2:    
        
         mov dx,10
         mov ah,2
         int 21h
            
          mov dx,13
          mov ah,2
         int 21h 
        
         
        dec space1
        
        cmp space2,0
        je skip_inc
           inc space2
        skip_inc:
        inc space2  
        
        mov star2,1
            
        pop cx
    loop outer_loop 
    
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;SECOND HALF 
  
  
  mov cx, 4 ; for outer loop


    
    outer_loop2:
        push cx
        
        cmp space3,0
        je skip_space3_loop
        mov cx, space3
        space3_loop:
        
            mov dx,32
            mov ah,2
            int 21h
        
        loop space3_loop


       skip_space3_loop:
        mov cx, star3
        star3_loop:
        
            mov dx,'*'
            mov ah,2
            int 21h
        
        loop star3_loop
        
        cmp space4,0
        je skip_space4
         mov cx, space4
        space4_loop:
        
            mov dx,32
            mov ah,2
            int 21h
        
        loop space4_loop  
        skip_space4: 
        
        cmp star4,0
        je skip_star4
               jmp_to_star4_loop: 
               mov cx, star4
       star4_loop:
        
            mov dx,'*'
            mov ah,2
            int 21h
        
        loop star4_loop  
        skip_star4:    
        
         mov dx,10
         mov ah,2
         int 21h
            
          mov dx,13
          mov ah,2
         int 21h 
        
         
        inc space3
        
        cmp space4,0
        je skip_inc2
           dec space4
        skip_inc2:
        dec space4  
        
        mov star4,1
            
        pop cx
    loop outer_loop2

    main endp
end main