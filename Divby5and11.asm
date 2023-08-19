;number divisible by 5 and 11
include 'emu8086.inc'
print 'Enter a Number:'
gotoxy 0,1
call scan_num
mov ax,cx
divide5:
mov bx,5
mov dx,00
div bx
cmp dx,00
je divide11
jne notdivisible

divide11:
mov ax,cx
mov dx,00
mov bx,11
div bx
cmp dx,00
je divisible
jne notdivisible

divisible:
gotoxy 0,2
print 'The Number is divisible by both 5 and 11'
hlt

notdivisible:
gotoxy 0,2
print 'The Number is not divisible by both 5 and 11'
hlt 

ret 
    define_scan_num
    define_print_num_uns
    define_print_num