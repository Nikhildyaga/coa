include 'emu8086.inc'
          
mov ax,2 
mov var2,ax
mov bx,1
           
lable1: 
    mov ax,var2 
    mov dx,0
    div bx
    cmp dx,0
    je counting
    inc bx
    cmp bx,var2
    jle lable1
    jg prime

counting:
    inc count
    inc bx
    cmp bx,var2
    jg prime
    jle lable1
    
prime:
    cmp count,2
    jg lable2
    je lable3
lable2:
    mov bx,1
    inc var2
    mov ax,var2
    mov count,0
    loop lable1
    
lable3:
    inc var1 
    mov ax,var2
    call print_num
    print ' '
    inc var2
    mov bx,1
    mov count,0
    cmp var1,50
    je break
    jne lable1 
break:
    ret
    
    
    
var2 dw 0                     
var1 dw 0
count dw 0

define_print_num
define_scan_num
define_print_num_uns