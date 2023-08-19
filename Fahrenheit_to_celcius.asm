;FAHRENHEIT TO CELCIUS
include 'emu8086.inc'
print 'Enter value of F'
gotoxy 0,1
call scan_num
mov ax,cx
fahrenheit:      ; ((F-32)x5)/9
sub ax,32
mov bx,5
mul bx
mov bx,9
div bx
gotoxy 0,2
print 'Value in Celcius:'
gotoxy 0,3
call print_num
print '  *C'
hlt

ret
    define_scan_num
    define_print_num
    define_print_num_uns