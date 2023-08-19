include 'emu8086.inc'
call scan_num   
mov dx,cx
mov ax,00
printn
call print_num  
inc ax
printn  
call print_num
mov ax,1
mov bx,00
loop: 
    cmp dx,s
    je pr   
    mov k,ax
    add ax,bx   
    printn
    call print_num
    mov bx,k
    inc s
    jne loop
pr:
    ret
    
define_scan_num
define_print_num
define_print_num_uns
s dw 02
k dw 00