;gcd
include 'emu8086.inc'
print "enter number1:"
call scan_num
printn
mov ax,cx
print "enter number2:"
call scan_num
printn
mov bx,cx 
cmp bx,ax
jg f1
jl  f2
f1:
   mov n,bx
   mov bx,ax
   mov ax,n
f2:
   mov dx,00
   div bx
   cmp dx,00
   je p
   mov r,dx
   mov ax,bx
   mov bx,r
   loop f2
p:  
   mov ax,bx
   call  print_num
   hlt
   
ret
 n dw 00
 r dw 00
 define_scan_num
 define_print_num
 define_print_num_uns
 

