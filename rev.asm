;reverse of a number
include 'emu8086.inc'
print "enter number:"
call scan_num
printn
mov ax,cx 
mov bx,10
f:
     mov dx,00
     div bx
     mov q,ax
     mov r,dx 
     mov ax,sum
     mul bx
     add ax,r
     mov sum,ax
     mov ax,q
     cmp ax,00
     je p
     jmp f
     
 p:
   mov ax,sum
   call print_num
   hlt
   
 ret
 sum dw 0
 q dw 0
 r dw 0
 ret
 define_scan_num
 define_print_num
 define_print_num_uns