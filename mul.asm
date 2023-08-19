; multiplication
include 'emu8086.inc'
print "enter multplicand:"
call scan_num
mov ax,cx
printn
print "enter multiplier:"
call scan_num
mov bx,cx
printn
mul bx
call print_num
ret
define_scan_num
define_print_num
define_print_num_uns