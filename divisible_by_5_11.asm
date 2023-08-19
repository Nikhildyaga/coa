include 'emu8086.inc'

print 'enter a number: ' 
print ' '
call scan_num

mov ax,cx
;divisible condition check
check :
   div var1
   cmp dx,0
   je yes
   print 'not divsible by both 5 &11'
   ret
yes:
    print 'divisible by both 5 && 11'
    ret 
define_scan_num 
var1 dw 55
                        