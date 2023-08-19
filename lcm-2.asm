;lcm
include 'emu8086.inc'
print "enter number1:"
call scan_num
mov a,cx
printn
print "enter number2:"
call scan_num 
printn
mov bx,cx
mov temp,1
cmp a,bx
jg f  
   
   s:
     mov ax,a

f:
   mov ax,bx
   mov bx,a 
   mov n,ax
 
c:
  mov dx,00 
  mov ax,n
  mul temp
  inc temp
  div bx
  cmp dx,00
  je p
  loop c
  
p:   
   mul bx
  call print_num
  hlt
  
ret
a dw 00
temp dw 00    
n dw 00
ret 
define_scan_num
define_print_num
define_print_num_uns
   