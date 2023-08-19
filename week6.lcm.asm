include 'emu8086.inc' 
print "Enter first no:"
call scan_num
printn
mov ax,cx 
print "Enter 2nd no:"
call scan_num
printn
mov bx,cx
mov temp,ax
mov i,1
func:
mul i
mov dx,0
div bx
cmp dx,0
je x
inc i
mov ax,temp
jmp func

x: 
mul bx
call print_num
ret

define_scan_num
define_print_num
define_print_num_uns
temp dw 0
i dw 1