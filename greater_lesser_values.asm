include 'emu8086.inc'
print 'enter number1'
call scan_num
mov ax,cx            
gotoxy 0,1  
print 'enter number2'
call scan_num 
mov bx,cx    
cmp ax,bx
jg great  
jl lesser
gotoxy 0,2
print 'equal'
ret
great:
    gotoxy 0,2
    print 'number2 is less' 
    ret  
lesser:
    gotoxy 0,2
    print 'number1 is less' 
    ret
define_scan_num