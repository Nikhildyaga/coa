include 'emu8086.inc'
print 'Enter Starting No  '
call scan_num
mov num1,cx
printn
print 'Enter Ending No  '
call scan_num
mov num2,cx
printn
mov ax,num1
print 'Prime Nos between '
call print_num 
mov ax,num2
print ' and '
call print_num
printn

mov cx,num1

elements:
     inc cx
     cmp cx,num2
     jge stop
     jl checkprime
     
checkprime:
    mov ax,cx
    mov bx,2
    mov dx,0
    div bx
    mov half,ax
  ;  mov ax,cx
    mov bx,0
    mov factcount,0
    jmp divide

divide:
    mov ax,cx
    cmp bx,half
    je check
    inc bx
    mov dx,0
    div bx 
    cmp dx,0
    je factors
    jne divide
    
factors:
    inc factcount
    cmp factcount,2
    jge elements
    cmp bx,half
    je check
    jne divide
    
check:
    cmp factcount,1
    je yes
    jne elements
    
yes:
    call print_num
    print ' '
    jmp elements    
    
stop:
    hlt
     
ret 
    num1 dw 0
    num2 dw 0
    half dw 0 
    factcount dw 0
    define_print_num_uns
    define_print_num
    define_scan_num