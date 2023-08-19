include 'emu8086.inc'
mov ax,1
print 'Enter Number to get the Factorial'
gotoxy 0,1    ;newline
call scan_num
mov bx,cx
fact:
    mul bx; here it is ax=ax*bx
    dec bx
    cmp bx,01
    jne fact
    je result
result:
    ;mov ah,o;to remove garbage or other values in higher bit 
    gotoxy 0,2
    call print_num
    hlt
ret 
    define_scan_num
    define_print_num
    define_print_num_uns