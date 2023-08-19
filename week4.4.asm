include 'emu8086.inc'   
printn "Enter a number:"
call scan_num 
printn
mov ax,cx
cmp ax,0
je x
cmp ax,0
jg x1
printn "negative"
ret

x:
printn "equal to zero"
ret

x1:
printn "positive"  

define_scan_num