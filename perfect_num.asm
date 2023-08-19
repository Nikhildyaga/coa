include 'emu8086.inc'
print 'enter the number:'
call scan_num
mov ax , cx 
mov bx, 02
div bx
mov num,ax
mov bx,01  


k:
 mov ax,cx 
 mov dx ,00
 div bx
 cmp dx ,00
 je k2
 inc bx 
 cmp bx,num 
 ja k3
 jbe k
 



k2:
 add s,bx 
 inc bx 
 cmp bx,num 
 jbe k
 
 
k3:
cmp s,cx
je k4
jne k5                   
                   
 
k4:
printn
print "perfect"
ret

k5:
printn
print "not perfect"
ret 

 
 
s dw 0
num dw 0
define_print_num
define_print_num_uns
define_scan_num 
