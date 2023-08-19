include 'emu8086.inc'
call scan_num
printn
mov se,cl
mov si,0
mov bl,5 


label: 
 call scan_num
 printn
 mov arr[si],cl
 mov al,arr[si]
  inc si              
  
cmp si,5                

jne label
mov si,0 
 jmp l2

 
l2: 
   mov al,arr[si]
    cmp al,se
    je l3
     inc si
     cmp si,5
    jne l2  
       printn "not found"
       ret

l3:
    printn "found"
    ret
     
arr db ?

define_scan_num
define_print_num
define_print_num_uns
di db 0
sum db 0 
max db 100  
se db 0