include 'emu8086.inc'  
mov si,0
mov di,0 

scanf: 
    call scan_num
    printn
    mov bx,cx
    mov ax,1
    f:  
        mul bx  
        mov var,ax
        dec bx
        cmp bx,00
        je f2
        jne f 
f2:  
    mov cx,var
    mov a[si],cx
    cmp si,8
    jae x
    inc si
    inc si
    jmp scanf
   
x:
    mov ax,a[di]
    call print_num 
    print " "
    cmp di,8
    jae end
    inc di
    inc di
    jmp x
end:
    ret







;a dw ?;;1,3,4,2,5

define_scan_num
define_print_num
define_print_num_uns
a dw ?  
var dw 00

