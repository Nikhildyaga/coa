include 'emu8086.inc'

print 'enter the number: '
call scan_num

mov ax,cx

lable: 
    mov dx,0
    div var1
    mov que,ax
    mov rem,dx 
    mov ax,dx 
    mov dx,0
    div var2
    cmp dx,0
    jne odd
    je check

check:
    mov ax,que
    cmp ax,0
    jne lable
    je printing
odd: 
    mov ax,rem   
    printn
    call print_num
    add ax,sum
    mov sum,ax
    loop check
             
printing:
    mov ax,sum
    printn
    print 'sum'
    print ' '
    call print_num
    ret
    
var1 dw 10 
sum dw 0
que dw 0
rem dw 0
var2 dw 2         
define_scan_num
define_print_num_uns 
define_print_num