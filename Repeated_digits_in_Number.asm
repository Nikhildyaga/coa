include 'emu8086.inc'

mov ax,33223

mov cx,10

lable1:
    cmp ax,0
    jne check
    je break

check:
    mov dx,0
    div cx
    mov rem,dx 
    cmp ax,0
    jne count1
    je display

count1: 
    mov dx,0
    div cx
    mov que,ax
    mov val,dx
    cmp dx,rem
    je count2
    jne lable2

count2:
    inc count
    mov ax,que
    cmp ax,0
    jne count1
    je display
lable2:
    mov ax,sum
    mul cx
    add ax,val
    mov sum,ax
    mov ax,que
    cmp ax,0
    jne count1
    je display
display:
    mov ax,rem
    printn
    call print_num
    print '=='
    print ' '
    mov ax,count
    call print_num
    printn
    mov ax,sum
    mov sum,0  
    mov count,1
    jmp lable1

break:
    ret
       
define_scan_num
define_print_num
define_print_num_uns

sum dw 0
rem dw 0
count dw 1
que dw 0 
val dw 0