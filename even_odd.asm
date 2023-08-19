; even or odd
include 'emu8086.inc'
print "enter number:"
call scan_num
mov ax,cx
mov bx,2
div bx  
printn
cmp dx,00  

je p
print "odd"  
hlt
  p:
    print "even"
    hlt  
ret
define_scan_num
define_print_num
define_print_num_uns
