;positive and negative
include 'emu8086.inc'
print "enter number:"
call scan_num
mov ax,cx 
printn
cmp ax,00
jg p
print "negative"
hlt

p:
  print "positive"
  hlt
  
ret
define_scan_num
define_print_num
define_print_num_uns