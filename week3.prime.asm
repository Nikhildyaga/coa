include 'emu8086.inc' 
call scan_num  ;enter a number to check prime or not
printn
mov ax,cx
mov temp,ax
mov cx,1
func: 
mov  ax,temp
mov dx,0
div cx
cmp dx,0
je x
cmp cx,temp
je x1
inc cx
jmp func

x:
inc count
cmp cx,temp
je x1
inc cx
jmp func

x1:
cmp count,2
je x2
print "not prime"
ret

x2:
print "prime"
ret

define_scan_num
define_print_num
define_print_num_uns
temp dw 0
count dw 0 
