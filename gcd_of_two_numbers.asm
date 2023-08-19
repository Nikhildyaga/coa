include 'emu8086.inc'

print 'enter num 1: '
call scan_num
mov var1,cx
printn
print 'enter num 2: '
call scan_num
mov var2,cx
printn 

mov ax,var1
cmp ax,var2
jle check1
jg  check2        

check1:
    div var3
    mov var3,ax
    inc var3
    loop lable1
check2:
    mov ax,var2
    div var3
    mov var3,ax
    inc var3
    loop lable1
lable1:  
    dec var3
    mov dx,0
    mov ax,var1
    div var3  
    cmp dx,0
    je lable2
    jne lable1
lable2:
    mov dx,0
    mov ax,var2
    div var3
    cmp dx,0
    je printing
    jne lable1
printing:
    print 'GCD== '
    print ' '
    mov ax,var3
    call print_num
    
define_scan_num
define_print_num_uns
define_print_num
var1 dw 0
var2 dw 0
var3 dw 2