include 'emu8086.inc'
mov ax,5
mov cx,5
func:
dec cx
mul cx
cmp cx,1
je x
jmp func

x:
call print_num
ret

define_print_num
define_print_num_uns
