include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,02
div bx
cmp dx,00
je even
jne odd
even:
    print 'even'
    ret
odd:
    print 'odd'
    ret
define_scan_num