include 'emu8086.inc' 
mov ax ,1
mov bx,5
l:
mul bx
dec bx
 cmp bx,1
 jne l 


call print_num   
define_print_num
define_print_num_uns