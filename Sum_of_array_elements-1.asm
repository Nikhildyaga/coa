;Sum of array elements
include 'emu8086.inc'
print 'Enter Size:  '
call scan_num
mov n,cx  
mov bx,n
mov si,0
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
    sub si,2
    mov ax,arr[si]
    add sum,ax
    cmp n,bx
    je printsum
    jne select_element
    
printsum:
    printn
    mov ax,sum
    print 'Sum of array Elements  '
    call print_num
    jmp stop
    
stop:
ret
    sum dw 0
    n dw 0
    arr dw n dup(?) 
    define_print_num_uns
    define_print_num
    define_scan_num