include 'emu8086.inc'
call scan_num
printn
mov ax,cx 
mov temp1,ax
mov bx,10
func:  
cmp ax,0
je x
mov dx,0
div bx
mov temp,ax  
mov cx,dx
mov ax,dx
mul cx
mul cx
add ax,sum
mov sum,ax
mov ax,temp 
jmp func

x:
mov ax,sum 
print "sum is:"
call print_num
printn
cmp ax,temp1
je x1
print "not Armstrong"
ret

x1:
call print_num
print " is Armstrong"

define_scan_num
define_print_num
define_print_num_uns
sum dw 0
temp dw 0 
temp1 dw 0
