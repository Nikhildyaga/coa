include 'emu8086.inc'
mov cx,2
mov ax,2
mul cx
jmp sq
sq:
print "square:"
call print_num
printn
jmp cb

cb:
mul cx
print "cube:"
call print_num
ret

define_print_num
define_print_num_uns
