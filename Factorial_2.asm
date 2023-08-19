include 'emu8086.inc'
print 'Enter a No.  '
call scan_num
mov ax,cx
mov bx,cx  
mov cx,0
cmp ax,1
jle one
jg factorial
  

one:
    printn
    mov ax,1
    print 'Factorial value  ' 
    call print_num
    hlt

factorial:
    dec bx
    mul bx
    cmp bx,1
    je result
    jne factorial
result: 
    printn
    print 'Factorial value  ' 
    call print_num
    hlt
ret
    define_print_num
    define_print_num_uns
    define_scan_num  