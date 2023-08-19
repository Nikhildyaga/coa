include 'emu8086.inc'
print 'Enter a No.  '
call scan_num
mov num,cx
mov bx,0

sqrt:
    inc bx
    mov ax,bx
    mul bx
    cmp ax,num
    jg check
    jle sqrt
    
check:
    sub bx,1
    mov ax,bx
    mul bx
    cmp ax,num
    je yes
    jne no
    
yes:
    mov ax,bx
    printn
    print 'It is a Perfect square Number. Sq.root value is  '
    call print_num
    hlt
    
no:
    mov ax,bx
    printn
    print 'It is NOT a Perfect square Number. Sq.root floor value is  '
    call print_num
    hlt
    
ret
    num dw 0
    define_print_num
    define_print_num_uns
    define_scan_num    