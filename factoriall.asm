include 'emu8086.inc'
printn "Enter a number:"
call scan_num
printn
mov ax,cx
mov bx,ax  
cmp ax,0
je x1
cmp ax,1
je x1
jmp func
func:
dec bx
mul bx
cmp bx,1
je x
jmp func
x1:
mov ax,1
jmp x

x:    
print "factorial is:"
call print_num
               
define_scan_num
define_print_num
define_print_num_uns
