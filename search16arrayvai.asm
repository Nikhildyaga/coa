include 'emu8086.inc'
call scan_num
printn
mov se,cx
mov si,0
mov bx,5 


label: 
 call scan_num
 printn
 mov arr[si],cx
 mov ax,arr[si]
  inc si              
  
cmp si,5                

jne label
mov si,0 
 jmp l2

 
l2: 
   mov ax,arr[si]
    cmp ax,se
    je l3                                 
    
     inc si
     cmp si,5
    jne l2  
       printn "not found"
       ret

l3:
    printn "found"
    ret
     
arr dw ?

define_scan_num
define_print_num
define_print_num_uns
di dw 0
sum dw 0 
max dw 100  
se dw 0