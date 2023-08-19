include 'emu8086.inc'
print 'Enter a number'
gotoxy 0,1
call scan_num
mov ax,cx
mov bx,0

reverse_op:
mov cx,10
mov dx,0
div cx
mov Q,ax
mov R,dx
mov ax,cx
mul bx
mov bx,ax
add bx,R
mov ax,Q
jmp checkrev

checkrev:
cmp ax,0
je rev_no
jne reverse_op

rev_no:
mov ax,bx
gotoxy 0,2
print 'Reverse number'
gotoxy 0,3
call print_num
hlt

ret 
    Q dw 0
    R dw 0
    define_scan_num
    define_print_num
    define_print_num_uns