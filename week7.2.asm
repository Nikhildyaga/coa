include 'emu8086.inc'
print "Enter a number:"
call scan_num
printn
mov ax,cx
mov bx,10
func:
mov dx,0
div bx
add sum,dx
cmp ax,0
je x
jmp func

x:
mov ax,sum
print "sum:"
call print_num
define_scan_num
define_print_num
define_print_num_uns 
sum dw 0
