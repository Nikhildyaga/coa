; devision
include 'emu8086.inc'
print "enter number:"
call scan_num
mov ax,cx
printn
print "enter divisor:"
call scan_num
mov bx,cx
printn
div bx
call print_num 
printn
mov ax,dx
call print_num
ret
define_scan_num
define_print_num
define_print_num_uns