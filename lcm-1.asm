include 'emu8086.inc'
print 'Enter a number'
gotoxy 0,1
call scan_num  
mov n1,cx
gotoxy 0,2
print 'Enter a number'
gotoxy 0,3
call scan_num
mov n2,cx
mov ax,n2
mov bx,n1

a:
mov dx,0
div bx
cmp dx,0
jne b
je gcd

b:
mov ax,bx
mov bx,dx
mov dx,0
div bx
cmp dx,0
jne b
je gcd

gcd:
mov gcdresult,bx
mov ax,n1
jmp lcm

lcm:
mul n2;
div gcdresult         ; lcm= n1*n2/gcd
gotoxy 0,4
print 'LCM IS'
gotoxy 0,5
call print_num    

ret 
    n1 dw 00
    n2 dw 00
    gcdresult dw 00
    define_scan_num
    define_print_num_uns
    define_print_num