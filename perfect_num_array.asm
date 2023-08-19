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
    mov sum ,00
    mov ax,a[si]
    mov num,ax
    mov bx,01
    jmp k
k:
    mov ax,num
    mov dx,00
    div bx
    cmp dx,00
    je k1
    inc bx
    cmp bx,num
    jae k2
    jb k


k1:
    mov ax,sum
    add ax,bx
    printn
    call print_num
    mov sum,ax
    inc bx
    cmp bx,num
    jae k2
    jb k
    
k2:
    mov ax,num
    cmp ax,sum
    je k4
    jne k5
    
    
k4:
    mov ax,num 
    printn 
    printn
    print 'perfect number is: '
    call print_num 
    jmp k5 
    
k5: 
    printn
    printn
    cmp si,8
    jae end
    inc si
    inc si
    jmp f1 
    
end:
    hlt
 
 
sum dw 00
num dw 00
define_print_num
define_print_num_uns
define_scan_num 
a dw ?  