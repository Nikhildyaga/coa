include 'emu8086.inc' 
printn "Enter a number:"
call scan_num
printn
mov ax,cx 
;mov cx,ax
mov dx,0
mov bx,2 ;checking factors upto half of given number,because if it is a perfect no means only half its is the greatest among all factors so.
div bx 
mov bx,1
mov temp,ax
mov ax,cx
func:
mov dx,0
div bx 
mov ax,cx
cmp dx,0 

je x 
cmp bx,temp;incase of 6 here cmp with 3 only
je x1  
inc bx
jmp func


x:
add sum,bx;adding into sum
cmp bx,temp;here also same cmp with 3
je x1
inc bx
jmp func 
x1:
mov ax,sum
print "sum is:" 
call print_num
printn  
cmp cx,sum
je x2
printn "not a perfect number"
ret

x2:
printn "perfect number"
ret

define_scan_num
define_print_num
define_print_num_uns

sum dw 0
temp dw 0  

