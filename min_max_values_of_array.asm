include 'emu8086.inc'

mov si,0 
mov cx,arr[si]
mov min,cx
mov max,cx

label1:
    cmp si,10
    je display 
    mov ax,arr[si]
    call print_num
    print ' '
    cmp min,ax
    jg shift1
    cmp max,ax
    jl shift2    
    add si,2
    jmp label1

shift1:
    mov min,ax
    add si,2
    jmp label1

shift2:
    mov max,ax
    add si,2
    jmp label1


display:
    printn
    mov ax,min
    print 'min=='
    print ' '
    call print_num
    printn
    mov ax,max
    print 'max=='
    print ' '
    call print_num
    ret
       

min dw 0
max dw 0
arr dw 12,19,10,6,9
define_scan_num
define_print_num
define_print_num_uns