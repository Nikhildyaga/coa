include 'emu8086.inc'
mov si,0
mov ax,arr[si]
loop:
cmp si,8
je x1
inc si
inc si
cmp ax,arr[si]
jg x;means min is greater than array element 
jmp loop

x:
mov ax,arr[si]
jmp loop

x1:
call print_num
ret

define_print_num
define_print_num_uns
arr dw 4,2,3,1,5