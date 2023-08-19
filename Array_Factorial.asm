;Factorial of array elements
include 'emu8086.inc'
print 'Enter Size:  '
call scan_num
mov n,cx  
mov bx,n
mov si,0
mov bp,0
printn
print 'Enter elements  '
jmp read

read:
  printn
  call scan_num
  mov arr[si],cx
  add si,2
  dec n
  cmp n,0
  je select_element
  jne read

select_element: 
    inc n
    ;sub si,2
    ;mov ax,arr[si]-->Factorial of Nos in Rev order
    mov ax,arr[bp];-->Takes elements from beginning
    add bp,2
    mov cx,ax
    sub cx,1
    jmp factorial_calc
    
factorial_calc:
    cmp ax,1
    jle print_one
    mul cx
    dec cx
    cmp cx,0
    je print_value    
    jne factorial_calc 
    
print_one:
    mov ax,1
    printn
    print 'Factorial Value  '
    call print_num
    jmp checkiterationcount
    
print_value:
    printn
    print 'Factorial Value  '
    call print_num
    jmp checkiterationcount
    
checkiterationcount:
    cmp n,bx
    je stop 
    jne select_element
    
stop:
ret
    n dw 0
    arr dw n dup(?) 
    define_print_num_uns
    define_print_num
    define_scan_num