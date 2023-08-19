include 'emu8086.inc'
print 'Enter a Number:'
call scan_num
mov ax,cx
mov sp,ax ; as ax value changes, storing original no. in sp
mov bx,1
mov cx,0 ; to store factors sum
divide:
mov dx,0
mov ax,sp
div bx
inc bx
cmp dx,0
je factsum
jne divide

factsum:
mov bp,bx
sub bp,1
add cx,bp
mov bx,2
mov ax,sp
div bx
mov bx,1
add bx,bp
cmp bp,ax
jge stop
jne divide

stop:
cmp cx,sp
je perfect
jne notperfect

perfect: 
gotoxy 0,2
print 'Perfect Number'
hlt

notperfect: 
gotoxy 0,2
print 'Not perfect Number'
hlt    

ret
    define_scan_num