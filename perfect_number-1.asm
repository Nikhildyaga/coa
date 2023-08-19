include 'emu8086.inc'
call scan_num
mov ax,cx 
mov s,ax
mov bx,ax
dec bx
lop:
    mov dx,00
    mov ax,s
    div bx
    cmp dx,00
    je loop1
    jne loop2
loop1:
    add sum,bx
    dec bx
    cmp bx,00
    je yes
    jne lop
loop2:
    dec bx
    cmp bx,00
    je yes
    jne lop
yes:
    mov bx,sum
    cmp bx,s
    je perfect
    jne no
perfect:
    print 'perfect'
    ret
no:
    print 'not'
    ret            
define_scan_num            
define_print_num
define_print_num_uns
s dw 00
sum dw 00