include 'emu8086.inc' 
call scan_num
mov ax,cx
f:
    mov bx,01
    mul bx
    mov res,ax
    dec ax
    cmp ax,00
    je printt
    jne f
        
        
printt: 
    call print_num
    
    
define_print_num
define_print_num_uns
define_scan_num
res dw 00
