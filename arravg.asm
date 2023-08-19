include 'emu8086.inc'
mov si,0
loop:
add ax,arr[si]
inc si
inc si
cmp si,10
je x
jmp loop

x:
mov dx,0
mov bx,5
div bx
call print_num
ret

define_print_num
define_print_num_uns
arr dw 1,2,3,4,5