include 'emu8086.inc'
print 'enter the searching'   
call scan_num
printn
mov search,cx
mov cx,0
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
    mov ax,00
    mov bx,a[si]
    add ax,bx
    mov sum,ax
    cmp si,8
    jae end
    inc si
    inc si
    jmp f1
    
end: 
    mov ax,si 
    print 'found'
    ret

    
    
    
   




                  
                  
;a dw ?;;1,3,4,2,5
                   

sum dw 00 

define_scan_num
define_print_num
define_print_num_uns
a dw ?  