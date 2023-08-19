include 'emu8086.inc'
mov ax,0
mov bx,1
mov cx,7
mov temp1,cx
mov cx,1  
func:
call print_num
print " "
mov temp,ax
add ax,bx
mov bx,temp
cmp cx,temp1
je x
inc cx
jmp func

x:
ret

define_print_num
define_print_num_uns
temp dw 0  
temp1 dw 0