include 'emu8086.inc'

print 'enter a number: '
print ' '
call scan_num
printn  
mov ax,cx

bits:
    cmp ax,0
    je break1
    mov dx,0 
    div var 
    mov bp,dx
    mov bx,ax
    mov ax,binary
    mul n
    add ax,bp 
    mov binary,ax
    inc count
    mov ax,bx  
    jmp bits

break1: 
    mov ax,binary 
    mov si,0
    mov binary,0
    jmp display

display:
    cmp ax,0
    je break3
    mov dx,0
    div n 
    mov bp,dx
    mov bx,ax
    mov ax,binary
    mul n
    add ax,bp
    mov binary,ax
    inc si
    mov ax,bx
    jmp display

break3: 
    mov ax,binary 
   jmp break2
break2:  
    cmp si,count
    jge return
    mul n
    mov binary,ax
    inc si
    loop break2
return:
    printn
    mov ax,binary
    call print_num
    ret
        



count dw 0
n dw 10
var dw 2 

binary dw 0

define_print_num
define_print_num_uns
define_scan_num

