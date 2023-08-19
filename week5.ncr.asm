include 'emu8086.inc'
print "Enter n:"
call scan_num
printn
mov ax,cx
mov temp,ax  
print "Enter r:"
call scan_num
printn
mov bx,cx
sub ax,bx
mov temp1,ax
mov ax,temp
mov cx,ax
factn:
dec cx
mul cx
cmp cx,1
je x
jmp factn

x:
;call print_num 
mov n,ax
mov cx,bx
mov ax,bx
jmp factr

factr:
dec cx
mul cx
cmp cx,1
je x1
jmp factr

x1:
mov r,ax
mov ax,temp1
mov cx,temp1
jmp factnr

factnr:
dec cx
mul cx
cmp cx,1
je x2
jmp factnr

x2:
mul r
mov r,ax
mov ax,n
mov dx,0
div r
print "ncr:"
call print_num 
ret

define_scan_num
define_print_num
define_print_num_uns 
temp dw 0
r dw 0
n dw 0
temp1 dw 0
