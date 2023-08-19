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
    mov count,00
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
    ja k2
    jbe k


k1:
    inc count
    inc bx
    cmp bx,num
    ja k2
    jbe k
    
k2:
    cmp count,02
    je k4
    jne k5
    
    
k4:
    mov ax,num
    printn 
    printn
    print 'prime number: '
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
count dw 00
define_print_num
define_print_num_uns
define_scan_num 
a dw ?  