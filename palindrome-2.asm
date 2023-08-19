include 'emu8086.inc'
printn "Enter a number:"
call scan_num
printn
mov ax,cx
;mov cx,ax
func: 
mov dx,0
mov bx,10
div bx 
mov temp,ax
mov ax,sum
mov temp1,dx
mul bx
add ax,temp1
mov sum,ax 
mov ax,temp
cmp ax,0
je x
jmp func

x:
mov ax,sum 
;call print_num  
cmp ax,cx
je x1 
mov ax,cx
call print_num
printn " is not a palindrome"
ret
;ret
x1:
call print_num 
printn " is palindrome"
                  
define_scan_num
define_print_num
define_print_num_uns
sum dw 0 
temp dw 0 
temp1 dw 0
