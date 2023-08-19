include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,8  
Add ax , bx

call print_num
define_scan_num
define_print_num
define_print_num_uns

