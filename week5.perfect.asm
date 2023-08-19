include 'emu8086.inc'
call scan_num;enter a number to check perfect or not
printn
mov ax,cx
mov temp,ax
mov dx,0
mov bx,2
div bx
mov temp1,ax
mov cx,1 
mov ax,temp
func:
mov dx,0
div cx
cmp dx,0
je x
cmp cx,temp1 
je x1
mov ax,temp
inc cx
jmp func

x:
add sum,cx;check what you are actually adding
cmp cx,temp1
je x1
mov ax,temp
inc cx
jmp func

x1:
mov ax,sum 
print "sum is:"
call print_num
printn 
cmp ax,temp
je x2
print "not perfect"
ret

x2:
call print_num
print " is perfect"
ret
define_scan_num
define_print_num
define_print_num_uns
temp dw 0
temp1 dw 0
sum dw 0

