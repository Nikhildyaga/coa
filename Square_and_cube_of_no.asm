include 'emu8086.inc'
print 'Enter a No'
gotoxy 0,1
call scan_num
mov ax,cx
mul cx
gotoxy 0,2
print 'Square of the No'
gotoxy 0,3
call print_num
mul cx
gotoxy 0,4
print 'Cube of the No'
gotoxy 0,5
call print_num

ret
    define_print_num_uns
    define_print_num
    define_scan_num
