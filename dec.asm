inlcude 'emu8086.inc'
call scan_num
printn
mov ax,cx
mov n,cx
mov cx,16 
f:
    shl ax,1
    jc k
    jnc k1
    
k:
    print "1"
    dec cx
    cmp cx,00
    jne f
k1:
    print "0" 
    dec cx
    cmp cx,00 4
    jne f
    
    
ret
    
  
    




n dw 0

define_scan_num
define_print_num
define_print_num_uns