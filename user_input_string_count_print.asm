include 'emu8086.inc'  

mov ah,10
mov dl,offset str
mov str,15
int 21h

printn
 
mov si,0


check: 
    cmp str[si],'$'
    je break1
    inc count 
    inc si
    jmp check
    
break1: 
     
    mov ax,si
    sub ax,3
    printn
    call print_num 
 ;   mov si,count
 printn    
 
    jmp reverse
    
reverse:
    cmp si,2
    jl break2
    mov dl,str[si]
    mov ah,2
    int 21h 
    dec si
    jmp reverse
      
break2:
    ret     

str db 20 dup('$')   
count dw 0
 

define_print_num
define_print_num_uns