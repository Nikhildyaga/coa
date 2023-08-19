include 'emu8086.inc'
call scan_num 
mov n,cx
loop:
    mov ax,s
    mov bx,s
    mul bx   
    cmp n,ax
    je printf 
    inc s
    jne loop
printf:
    mov ax,s 
     printn
    call print_num
    ret
define_scan_num
define_print_num
define_print_num_uns
s dw 1   
n dw 00
    