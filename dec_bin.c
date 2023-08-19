include 'emu8086.inc'
print "enter the number:"
call scan_num
mov ax,cx
mov bx,10
mov i,01
mov d,02
mov sum,00
x:
    mov dx,00
    div d
    mov q,ax
    mov r,dx
    mov ax,dx
    mul i
    add sum,ax
    mov ax,i
    mul bx
    mov i,ax
    mov ax,q
    cmp ax,00
    je p
    cmp ax,01
    je p
    jmp x
p:
    mul i
    add sum,ax
    mov ax,sum
    call print_num
    hlt
i dw 00
q dw 00
r dw 00
d dw 00
sum dw 00
define_scan_num
define_print_num
define_print_num_uns