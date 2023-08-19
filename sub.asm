; subtraction
include 'emu8086.inc'    
print "enter number1:"
call scan_num
mov ax,cx      
printn
print "enter number2:"
call scan_num
mov bx,cx
printn
sub ax,bx
call print_num
ret
define_scan_num
define_print_num
define_print_num_uns
