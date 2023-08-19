;ARMSTRONG NUMBER
include 'emu8086.inc'
print 'Enter a 3 digit No.'
gotoxy 0,1
call scan_num
mov num,cx
mov ax,cx
mov bx,10

digits:
    mov dx,0
    div bx
    mov Q,ax
    mov R,dx
    mov ax,R
    mul R
    mul R
    add sum,ax
    mov ax,Q
    cmp ax,0
    je check
    jne digits
    
check:
    mov ax,sum
    cmp ax,num
    je yes
    jne no
    
yes:
    gotoxy 0,2
    print 'ARMSTRONG NUMBER'
    hlt
no:
    gotoxy 0,2
    print 'NOT AN ARMSTRONG NUMBER'
    hlt

 
ret 
    num dw 0
    sum dw 0
    Q dw 0
    R dw 0
    define_print_num_uns
    define_print_num
    define_scan_num