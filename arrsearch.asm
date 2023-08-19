include 'emu8086.inc'
mov si,0
mov bx,7  
mov ax,arr[si]
loop:
cmp si,10
je x1  
cmp ax,bx
je x
inc si 
inc si
mov ax,arr[si]
jmp loop

x:
printn "found"
ret 
x1:
print "not found"

define_print_num
define_print_num_uns
arr dw 1,4,3,2,5
