;ARRAY READ AND PRINT
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
  je print
  jne read

print:
    printn
    print 'Elements in array  '
    jmp printarray

printarray:
    mov ax,arr[bp] 
    call print_num
    add bp,2
    inc n 
    cmp n,bx
    je stop
    jne printarray
    
stop:
ret
    s dw 0
    n dw 0
    arr dw n dup(?) 
    define_print_num_uns
    define_print_num
    define_scan_num