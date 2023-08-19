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
    mov bx,a[si]
    cmp bx,search
    je end
    jne f2 

f2: 
    cmp si,8
    jae end2
    inc si
    inc si
    jmp f1
    
end: 
    ;mov ax,si 
    print 'found'
    ret
end2:
    print 'not found'
    ret
    
    
    
   




                  
                  
;a dw ?;;1,3,4,2,5
                   

search dw 00 

define_scan_num
define_print_num
define_print_num_uns
a dw ?  