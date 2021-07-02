.model small 
.stack 100h 
.data 
your_name db 'name:Muhammad Uzair ishfaq$' 
roll db 'roll number: 030$' 
father_name db 'father"s name:Muhammad Ishfaq$' 
dashes db '-------$'  
.code 
main proc          
mov ax, @data     
mov ds, ax          
lea dx, your_name     
mov ah, 9     
int 21h          
mov dl, 10     
mov ah, 2     
int 21h     
mov dl, 13     
mov ah, 2     
int 21h          
lea dx, dashes     
mov ah, 9     
int 21h          
mov dl, 10     
mov ah, 2     
int 21h    
mov dl, 13     
mov ah, 2     
int 21h          
lea dx, roll     
mov ah, 9     
int 21h          
mov dl, 10     
mov ah, 2     
int 21h     
mov dl, 13     
mov ah, 2     
int 21h          
lea dx, dashes     
mov ah, 9     
int 21h          
mov dl, 10     
mov ah, 2     
int 21h     
mov dl, 13     
mov ah, 2     
int 21h          
lea dx, father_name     
mov ah, 9     
int 21h                    
main endp 
end main