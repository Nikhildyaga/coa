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
    mov bx,a[si]
    cmp bx,maxi
    ja f2
    jbe f3 
f2:
    mov maxi,bx
    jmp f3
f3: 
    cmp si,8
    jae end
    inc si
    inc si
    jmp f1
end:
    call print_num
    ret
    
    
    
   





;a dw ?;;1,3,4,2,5

define_scan_num
define_print_num
define_print_num_uns
a dw ?  
maxi dw 00
