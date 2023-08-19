include 'emu8086.inc'
call scan_num
mov ax,cx
mul cx  
print 'square is '
call print_num   
printn
mul cx     
print 'cube is '
call print_num
define_scan_num
define_print_num
define_print_num_uns
    