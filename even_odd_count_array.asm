include 'emu8086.inc'
mov si,0
mov di,0 

scanf: 
    call scan_num
    printn 
    mov a[si],cx
    cmp si,8
    jae x
    inc si
    inc si 
    jmp scanf
x:
    mov si,0
    jmp f1 
                
f1: 
    mov ax,a[si]
    mov bx,02
    jmp k
k:
    mov dx,00
    div bx
    cmp dx,00
    je k1
    jne k2
k1:
    inc count_of_even
    jmp k3
k2:
    inc count_of_odd 
    jmp k3
    
k3:
    cmp si,8
    jae k4
    inc si
    inc si
    jmp f1
k4:  
    printn
    printn
    call print_num
    ret


 
count_of_even dw 00
count_of_odd dw 00
define_print_num
define_print_num_uns
define_scan_num 
a dw ?  