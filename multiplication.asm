include 'emu8086.inc'
mov ax,13
mov bx,7

mul bx 
call print_num
mov ax,13
div bx  
print ' '
call print_num




define_print_num
define_print_num_uns

