include 'emu8086.inc'   
#MAKE_COM#
ORG 100h
print 'enter any number'  
gotoxy 0,1
call scan_num 
mov ax,cx    
mov bx,var2
div bx
cmp dx,0 
je even    
gotoxy 0,2 
print 'odd'
ret      
even:   
    gotoxy 0,2
    print 'even' 
define_scan_num
var2 dw 02   

