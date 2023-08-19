include 'emu8086.inc'
print 'Enter No '
;gotoxy 0,2
call scan_num
mov ax,cx
mov bx,10

sum_op:
    mov dx,0
    div bx
    add sum,dx
    cmp ax,0
    je result
    jne sum_op
result:
    mov ax,sum 
    printn
    print 'Sum of digits  '
    call print_num
    hlt
ret 
    sum dw 0
    define_print_num_uns
    define_print_num
    define_scan_num