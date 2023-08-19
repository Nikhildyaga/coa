include 'emu8086.inc'
mov ax,5
lable:  
    call print_num 
    dec ax
    cmp ax,0
    jne lable
    ret  
define_print_num_uns
define_print_num