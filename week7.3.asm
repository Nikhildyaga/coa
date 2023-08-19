include 'emu8086.inc'
printn "Enter a number:"
call scan_num
printn
mov ax,cx
mov bx,cx
mul bx
jmp s
c:
mul bx
jmp x

s:
print "square:"
call print_num 
printn
jmp c

x:
print "cube:"
call print_num
define_scan_num
define_print_num
define_print_num_uns
