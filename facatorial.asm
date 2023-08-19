include 'emu8086.inc'
call scan_num
mov ax,1   
mov s,cx
loop:
    mov bx,n
    mul bx
    cmp bx,s   
    je print
    inc n
    jne loop
print:
    call print_num
    ret
define_scan_num
define_print_num
define_print_num_uns 
s dw 00
n dw 1