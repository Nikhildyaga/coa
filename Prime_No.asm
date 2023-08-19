include 'emu8086.inc'
print 'Enter Num.  '
call scan_num
mov num,cx
mov ax,cx
mov bx,2
div bx
mov half,ax
mov bx,0
mov cx,0
cmp num,1
je one
jne divide

divide:
    mov ax,num
    cmp bx,half
    je check
    inc bx
    mov dx,0
    div bx 
    cmp dx,0
    je factors
    jne divide
    
factors:
    inc cx
    cmp bx,half
    je check
    jne divide
    
check:
    cmp cx,1
    je yes
    jne no  
    
one:
    printn
    print 'Neither Prime nor Composite'
    hlt
    
yes:
    printn
    print 'Prime No.'
    hlt
    
no:
    printn
    print 'Not a Prime No'
    hlt  
ret 
    num dw 0
    half dw 0
    define_print_num_uns
    define_print_num
    define_scan_num