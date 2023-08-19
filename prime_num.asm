include 'emu8086.inc'
call scan_num
mov ax,cx
mov s,ax
mov bx,ax
loop:
    mov dx,00
    mov ax,s
    div bx
    cmp dx,00
    je iffactor
    dec bx
    jne loop
iffactor:
    inc c
    dec bx
    cmp bx,00
    je checking_for_prime
    jne loop
checking_for_prime:
    cmp c,02
    je prime
    jne notprime
prime:
    print 'prime'
    ret
notprime:
    print 'notprime'
    ret

c dw 00
s dw 00
define_scan_num
define_print_num
define_print_num_uns