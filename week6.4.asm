include 'emu8086.inc'
print "Enter a number:"
call scan_num
printn 
mov ax,0
mov bx,1
func:
cmp cx,0
je x
cmp cx,1
je x1
call print_num
print " "
mov dx,ax
add ax,bx
mov bx,dx
dec cx
jmp func

x:
mov ax,cx   
call print_num
ret
x1: 
mov ax,cx
call print_num
ret   
define_scan_num
define_print_num
define_print_num_uns
temp dw 0

