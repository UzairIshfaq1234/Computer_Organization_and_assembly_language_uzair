.model small
.stack 100h
.data
outer_loop_value dw 0
.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov bx, 5 
    mov cx, 4
  
    outer_loop:
        push cx    
        mov outer_loop_value, cx
        
        mov cx, bx
        inner_loop:
        
            cmp outer_loop_value, cx
            jl print_star:
            
            print_@:
                mov dx, '@'
                mov ah, 2
                int 21h
            
            loop print_@
            
            jmp done_loop
            
            print_star:
                mov dx, '*'
                mov ah, 2
                int 21h
            
        loop inner_loop
        
        done_loop:
        
            mov dx, 10
            mov ah, 2
            int 21h
            mov dx, 13
            mov ah, 2
            int 21h
        
        pop cx
    loop outer_loop
   
    main endp
end main
