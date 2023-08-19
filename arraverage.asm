include 'emu8086.inc'
print "Enter array size:"
call scan_num
mov bx,cx
;add cx,cx
;add cx,cx
;mov si,0
mov dx,cx
add dx,dx 
printn
loop:
call scan_num 
printn
mov arr[si],cx
add ax,arr[si] 
inc si
inc si
cmp si,dx
je x
jmp loop

x:
print "sum:" 
call print_num;for sum
printn
;mov ax,n
mov dx,0
;div n1
div bx 
print "average:"
call print_num
ret

define_scan_num
define_print_num
define_print_num_uns
arr dw ?
n1 dw 0
n dw 0
 