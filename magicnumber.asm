;CHECK WHETEHER NUMBER IS MAGIC NUMBER OR NOT 
;TAKE A NUMBER. PERFORM SUM OF DIGITS. REVERSE THE SUM NUMBER. MULTIPLY SUM AND REVERSE SUM NO. IF PRODUCT=ORIGINAL NO. THEN IT IS MAGIC NO.
include 'emu8086.inc'
print 'Enter a Number:'
gotoxy 0,1
call scan_num
mov ax,cx
mov num,cx
mov cx,0
sum_:
mov bx,10
mov dx,0
div bx
add cx,dx
jmp check

check:
cmp ax,0
je sumvalue
jne sum_

sumvalue:
mov sum,cx
mov ax,sum
gotoxy 0,2
print 'Sum of digits:'
gotoxy 0,3
call print_num
mov cx,0
jmp reverse_op

reverse_op:
mov bx,10
mov dx,0
div bx
mov Q,ax
mov R,dx
mov ax,bx
mul cx
mov cx,ax
add cx,R
mov ax,Q
jmp checkrev

checkrev:
cmp ax,0
je rev_no
jne reverse_op

rev_no:
mov rev,cx
mov ax,rev
gotoxy 0,4
print 'Reverse Number of sum:'
gotoxy 0,5
call print_num
jmp checkmagicno

checkmagicno:
mul sum
cmp ax,num
je magic
jne notmagic

magic:
gotoxy 0,6
print 'The Given Number is a Magic Number'
hlt

notmagic:
gotoxy 0,6
print 'The Given Number is NOT a Magic Number'
hlt

ret 
    num dw 0
    sum dw 0
    rev dw 0
    Q dw 0
    R dw 0
    define_scan_num
    define_print_num
    define_print_num_uns