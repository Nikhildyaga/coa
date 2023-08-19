include 'emu8086.inc'
mov si,0
mov di,0

scanf: 
    printn
    call scan_num
    mov ax,cx 
    mov a[si],ax
    cmp si,08
    je x
    inc si 
    inc si
    jmp scanf
    
x:
    mov si,00
    mov di,00
    jmp k
    
k:
    mov ax,a[si]
    mov cx,ax 
    mov bx,10
    mov sum,00
    mov quo,00
    mov rem,00
    jmp k1
    

k1:
    mov dx,00 
    div bx
    mov quo,ax
    mov rem,dx 
    mov ax,sum
    mov bx,10
    mul bx 
    add ax,rem
    mov sum,ax
    mov ax,quo
    cmp ax,00
    je k2
    jmp k1
    
k2:
    cmp sum,cx
    je k3
    jne k4
    
k3: 
    mov ax,cx
    printn
    call print_num
    print 'is palindrome'
   
    jmp k4

k4:
    cmp si,08
    je end
    inc si 
    inc si
    jmp k    
end:
    ret
    
    
    
   
    




quo dw 00
rem dw 00
sum dw 00
define_scan_num
define_print_num
define_print_num_uns

a dw ?