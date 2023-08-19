include 'emu8086.inc'
print 'Enter No. of Fibonacci No.s to be displayed  '
call scan_num
printn
mov n,cx
mov prev,-1
mov next,1
mov curr,0
mov cx,0
mov bx,prev

fib:
    add bx,next
    mov curr,bx
    mov bx,next
    mov ax,curr
    mov next,ax
    call print_num
    print ' '
    inc cx
    cmp cx,n
    je stop
    jne fib
    
stop:
    hlt
ret
    n dw 0
    prev dw 0
    curr dw 0
    next dw 0
    define_scan_num
    define_print_num
    define_print_num_uns
    