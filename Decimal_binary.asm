include 'emu8086.inc'

print 'enter a number: '
call scan_num 
printn 
mov n,cx
mov ax,cx 
mov di,0

label1:
    cmp ax,0
    je display
    mov dx,0
    div var
    mov cx,dx
    push cx 
    inc count
    jmp label1
    
display:
    cmp count,0
    je break
    pop ax
    call print_num
    print ' '
    dec count
    jmp display   
    
break:
    ret    


n dw 0
count dw 0
var dw 2

define_print_num  
define_print_num_uns
define_scan_num