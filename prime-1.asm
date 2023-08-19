include 'emu8086.inc'  
printn "Enter a number:"
call scan_num
printn
mov ax,cx
mov bx,1  
mov temp,ax 
mov cx,0
func:
mov dx,0  
div bx
mov ax,temp 
cmp dx,0
je x
cmp bx,ax 
je x1 
inc bx
jmp func   

x:
inc cx
;inc bx 
cmp bx,ax 
je x1  
inc bx
jmp func
x1:
cmp cx,2
je res
printn "not prime"
ret

res:
printn "prime" 

define_scan_num
temp dw 0