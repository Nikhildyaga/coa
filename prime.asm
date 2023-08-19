include 'emu8086.inc'
call scan_num
mov ax,cx 
mov s,ax  
mov bx,ax
l:
     mov dx,00
     mov ax,s
     div bx
     cmp dx,00
     je l2
     dec bx
     jne l
l2:
    inc c
    dec bx
    cmp bx,00
    je l3
    jne l
l3:
    cmp c,02
    je l4
    jne l5 
l4:
    print 'prime'
    ret
l5:
    print 'not prime'
    ret
    
c dw 00 
s dw 00
define_scan_num
define_print_num
define_print_num_uns