include 'emu8086.inc'
mov al,99
mov bl,10
add al,bl
gotoxy 0,1
call print_num 
define_print_num_uns
define_print_num