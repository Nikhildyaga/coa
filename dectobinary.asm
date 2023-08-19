include 'emu8086.inc'
call scan_num
mov ax,cx
mov n,ax
mov cx,16
f:
    shl ax,1
    jc k
    jnc k1
    
k:
    print "1"
    dec cx
    jmp k2 
    
k1:
    print "0"
    dec cx
    jmp k2
    
k2:
    cmp cx,00
    jne f
    hlt
       
n dw 00
define_scan_num
define_print_num
define_print_num_uns
    