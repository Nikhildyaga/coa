;LINEAR SEARCH
include 'emu8086.inc'
print 'Enter Size:  '
call scan_num
mov n,cx  
mov bx,n
mov si,0
mov ax,-1  ; Position
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
  je searchelement
  jne read

searchelement:
    printn
    print 'Enter element to be searched  '
    call scan_num 
    jmp search

search:
    inc ax
    sub si,2
    inc n
    cmp arr[si],cx
    je found
    jne continuesearch
    
continuesearch:
    cmp n,bx
    je notfound
    jne search
    
notfound:
    printn
    print 'Element is Not found ' 
    jmp stop
    
found:
    printn
    sub bx,ax 
    mov ax,bx
    print 'Element is Found at Position  '
    call print_num
    jmp stop
    
stop:
ret
    s dw 0
    n dw 0
    arr dw n dup(?) 
    define_print_num_uns
    define_print_num
    define_scan_num