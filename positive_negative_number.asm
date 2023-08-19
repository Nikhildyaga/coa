include 'emu8086.inc'
print 'enter a number '
call scan_num
cmp cx,0
jg positive  
je zero
gotoxy 0,1
print 'negative'    
ret 
positive:
    gotoxy 0,1
    print 'positive'
    ret
zero:
    gotoxy 0,1
    print 'zero'
    ret
define_scan_num
