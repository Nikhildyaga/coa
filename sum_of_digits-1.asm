;sum of digits
include 'emu8086.inc'
print "enter the number:"
call scan_num
mov ax,cx 
printn
mov bx,10
x:
   cmp ax,0
   je s 
   mov dx,0
   div bx
   add sum,dx
   loop x
   
s:
  mov ax,sum
  
call print_num
hlt    

sum dw 0
ret
define_scan_num
define_print_num
define_print_num_uns