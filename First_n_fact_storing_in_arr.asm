include 'emu8086.inc'
print 'Enter No. of Factorials to be stored  '
call scan_num
mov n,cx
mov count,0
mov si,0
mov di,0
mov bx,0
mov cx,0
printn
print 'Factorial values stored in array  '

elements:
    inc cx
    mov bx,cx
    mov ax,cx
    cmp cx,n
    jg printarr
    jl factorial
    
factorial:
    cmp ax,1
    jle one 
    dec bx
    mul bx
    cmp bx,1
    je store
    jne factorial
    
one:
    mov ax,1
    jmp store
    

store: 
     mov arr[si],ax
     add si,2    
     inc count
     mov bx,count
     cmp bx,n
     je printarr
     jne elements
    
printarr: 
    mov ax,arr[di] 
    add di,2
    call print_num_uns
    print ' '
    dec count
    cmp count,0
    je stop
    jne printarr
    
stop:    
ret
    n dw 0 
    count dw 0
    arr dw n dup<?>
    define_print_num
    define_print_num_uns
    define_scan_num    