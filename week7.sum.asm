include 'emu8086.inc'
mov ax,5555
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
call print_num

define_print_num
define_print_num_uns
sum dw 0