include 'emu8086.inc'

print 'enter a number'
print ' '

call scan_num
printn
mov num,cx 

numbers:
    mov ax,count
    mov sum,0
    mov var2,1
    mov bx,2 
    mov dx,0
    div bx
    mov var1,ax
    jmp lable1

lable1: 
    mov ax,count
    mov dx,0 
    div var2
    cmp dx,0
    je addition
    jne lable2

addition:
    mov ax,sum
    add ax,var2
    mov sum,ax
    inc var2
    mov bx,var1 
    cmp bx,var2 
    jge lable1
    jl check
lable2:
    inc var2
    mov bx,var1
    cmp bx,var2 
    jge lable1
    jl check

check:
    mov ax,sum
    cmp ax,count
    je perfect
    jne continue

perfect:
    mov ax,count
    call print_num 
    print ' '
    jmp continue
continue:
    inc count
    cmp cx,count
    jge numbers
    jl break 
break:
    ret
    
num dw 0
sum dw 0
count dw 2 
var1 dw 0  
var2 dw 1

define_scan_num
define_print_num
define_print_num_uns