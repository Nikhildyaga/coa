include 'emu8086.inc'
call scan_num;entering input in decimal form
printn
mov ax,cx
mov bx,2 
mov i,1 
func:
mov dx,0
div bx
mov temp,ax
mov ax,dx
mul i
add bin,ax
mov ax,i
mul n
mov i,ax
mov ax,temp 
cmp ax,0
je x
jmp func

x:
mov ax,bin
call print_num 
ret
 
define_scan_num
define_print_num
define_print_num_uns
bin dw 0
i dw 1
temp dw 0
n dw 10

