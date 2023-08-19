include 'emu8086.inc'
mov ax,1
mov cx,5
l:
mul cx
loop l  
call print_num

define_print_num
define_print_num_uns




