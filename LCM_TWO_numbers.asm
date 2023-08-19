include 'emu8086.inc'

print 'enter the no1: '

call scan_num
mov var1,cx
printn

print 'enter the no2: '
call scan_num
mov var2,cx
printn 

mov ax,var1
mov bx,var2

gcd:
    mov dx,0
    div bx
    mov ax,bx
    mov var3,bx
    mov bx,dx
    cmp dx,0
    je break
    jne gcd 
    
break: 
     mov dx,0
     mov ax,var1
     mul var2
     
     div var3     
     
     print 'LCM === '
     print ' '
     call print_num
     

define_scan_num
define_print_num_uns
define_print_num 
var1 dw 0
var2 dw 0
var3 dw 0