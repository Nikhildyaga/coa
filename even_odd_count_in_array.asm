;ARRAY READ AND PRINT COUNT OF EVEN AND ODD NOS
include 'emu8086.inc'
print 'Enter Size:  '
call scan_num
mov n,cx  
mov bx,n
mov si,0
mov bp,0
mov evencount,0
mov oddcount,0
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
  je check
  jne read

check:            
    sub si,2
    mov ax,arr[si]
    mov cx,2 
    mov dx,0
    div cx
    cmp dx,0
    je even
    jne odd
    
even:
    inc evencount
    inc n
    cmp n,bx
    je result
    jne check

odd:
    inc oddcount
    inc n
    cmp n,bx
    je result
    jne check

result:
    mov ax,evencount
    printn
    print 'No of Even values in array  '
    call print_num
    mov ax,oddcount
    printn
    print 'No of odd values in array  ' 
    call print_num    
    jmp stop
    
stop:
ret
    s dw 0
    n dw 0
    evencount dw 0
    oddcount dw 0
    arr dw n dup(?) 
    define_print_num_uns
    define_print_num
    define_scan_num