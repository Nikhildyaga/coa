include 'emu8086.inc'
print 'Enter a No.'
printn
call scan_num
mov num,cx
mov ax,cx
mov cx,0
mov bx,2
div bx
mov half,ax
mov bx,0

divide:
    cmp bx,half
    je factsum
    inc bx
    mov ax,num
    mov dx,0
    div bx
    cmp dx,0
    je factsum
    jne divide
factsum:
    add cx,bx
    cmp bx,half
    je check
    jne divide
check:
    mov ax,num
    cmp ax,cx
    je yes
    jne no
yes:
    printn
    print 'Perfect No.'
    hlt
no:
    printn
    print 'Not a Perfect No.'
    hlt
       
ret
    num dw 0
    half dw 0
    sum dw 0
    define_print_num_uns
    define_print_num
    define_scan_num