;write a program that takes n # of element of an array as an input from user and 
;find @ in the inputed array.
; if @ is found display "@ is found" else display "@ is not found".     
.model small
.stack 100h
.data       
str1 db '@ is found $'
str2 db '@ is not found$'


var db  ?
arr db  100 dup (?)
.code
main proc


mov ax,@data
mov ds,ax


mov ah,1      ;takes n from the user
int 21h
sub al,48


mov var,al 
mov cl,0 


mov si,offset arr
L:


cmp cl,var 
je t  
mov ah,1         ;input of an array
int 21h
mov [si],al


inc si
inc cl    


jmp l
   
T:       ;searchig for @ in an inputted array


mov cl,0 


mov si,offset arr
L1:


cmp cl,var  ;loop condition
je t1  


cmp [si],'@'
je t2


inc si
inc cl    


jmp l1
t1:  ;@ is not found
 lea dx,str2
 mov ah,9
 int 21h
jmp exit     
     
t2: ;@ is found
lea dx,str1
mov ah,9
int 21h


exit:


main endp
end main
