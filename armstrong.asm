include 'emu8086.inc'
call scan_num
mov ax,cx 
mov bx,10
mov n1,ax
l:
    mov dx,00 
    div bx
    mov q,ax
    mov ax,dx 
    mov cx,dx
    mul dx
    mul cx  
    add n2,ax
    mov ax,q
    cmp ax,00
    je i
    jne l
    
i:
    mov bx,n2
    cmp bx,n1
    je yes
    jne no
yes:
    print 'armstrong'
    ret
no:
    print 'not armstrong'
    ret
define_scan_num
define_print_num
define_print_num_uns
q dw 00
n1 dw 00
n2 dw 00
    