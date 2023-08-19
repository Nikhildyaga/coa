include 'emu8086.inc'  
print "Enter a number;"
call scan_num
printn  
mov ax,0
mov bx,1
cmp cx,0
je x1
cmp cx,1
je x1 
dec cx
func: 
cmp cx,0
je x 
mov dx,ax
add ax,bx
mov bx,dx
dec cx
jmp func  

x1:
mov ax,cx
call print_num
ret

x:
call print_num  
define_scan_num
define_print_num
define_print_num_uns