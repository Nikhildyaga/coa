include 'emu8086.inc'
;mov ax,5
;mov bx,2 
;mov cx,ax
call scan_num
mov ax,cx 
mov temp1,cx
printn
call scan_num
printn
mov bx,cx
sub ax,bx
mov temp,ax
mov ax,temp1  
mov cx,temp1
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
mov ax,temp
mov cx,ax
jmp factnr

factnr:
dec cx
mul cx
cmp cx,1
je x2
jmp factnr

x2:
mov nr,ax
mov cx,r
mul cx
mov cx,ax
mov ax,n
mov dx,0
div cx    
print "ncr is:"
call print_num
jmp p

p:
mov ax,n
mov cx,nr
mov dx,0
div cx
printn
print "npr is:"
call print_num
 
define_scan_num
define_print_num
define_print_num_uns   
n dw 0
r dw 0
nr dw 0
temp dw 0 
temp1 dw 0