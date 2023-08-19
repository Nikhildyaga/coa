include 'emu8086.inc'
print 'Enter size.  '
call scan_num
mov n,cx
mov m,cx  
mov si,0
mov max,-1
mov min,1000
printn
print 'Enter elements  '
jmp input

input:
   printn
   call scan_num 
   mov arr[si],cx
   mov cx,m
   add si,2
   dec n
   cmp n,0
   je findmin
   jne input
   
findmin:
   sub si,2
   mov ax,arr[si] 
   cmp min,ax
   jg updatemin
   ;sub si,2
   inc n
   cmp n,cx
   je printmin
   jne findmin
   
updatemin:
    inc n 
    mov min,ax
    ;sub si,2
    ;inc n
    cmp n,cx
    je printmin
    jne findmin
    
printmin:
    printn
    mov ax,min
    print 'Min value  '
    call print_num
    jmp findmax
    
findmax:
    mov ax,arr[si]
    cmp ax,max
    jg updatemax
    add si,2
    dec n
    cmp n,0
    je printmax
    jne findmax
    
updatemax:
    mov max,ax
    add si,2
    dec n
    cmp n,0
    je printmax
    jne findmax
    
printmax:
    printn
    mov ax,max
    print 'Max value  '
    call print_num
    hlt
    
ret
    n dw 0
    m dw 0
    min dw 1000
    max dw -1
    s dw 0
    arr dw s dup(?)  
    define_print_num 
    define_print_num_uns
    define_scan_num