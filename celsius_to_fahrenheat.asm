include 'emu8086.inc'

print 'enter temp in celsius: '

call scan_num
mov c,cx

conversion:
    mov ax,9
    mov bx,5
    mul c
    div bx
    add ax,32
    
    mov f,ax
    mov ax,c
    printn
    call print_num
    print ' '
    print 'celsius=='
    print ' '
    mov ax,f
    call print_num
    print ' '
    print 'fahrenheat'
    ret
    
c dw 0
f dw 0
define_scan_num
define_print_num
define_print_num_uns