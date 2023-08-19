;factorial
include 'emu8086.inc'     
print "enter number:"
call scan_num
mov ax,cx
mov bx,ax  
printn
cmp ax,00
jne f
  
  f:
    dec bx
    mul bx
    cmp bx,01
    jne f
 
cmp bx,01
je p   
   
   p:
   call print_num
   
 ret
 define_scan_num
 define_print_num
 define_print_num_uns
