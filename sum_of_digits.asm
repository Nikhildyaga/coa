include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,10
loop:
    mov dx,00
    div bx    
    add sum,dx
    cmp ax,00
    je printf
    jne loop
printf:
    mov ax,sum    
    gotoxy 0,1
    call print_num
    ret
define_scan_num
define_print_num
define_print_num_uns 
sum dw 00