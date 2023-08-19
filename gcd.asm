include 'emu8086.inc'
call scan_num
mov ax,cx 
call scan_num 
printn
mov bx,cx
loop:     
    mov dx,00
    cmp ax,00
    je print
    mov t,ax
    mov ax,bx
    mov bx,t
    div bx 
    mov ax,dx 
    jne loop
print:
    mov ax,bx
    call print_num
    ret
define_scan_num
define_print_num
define_print_num_uns
t dw 00