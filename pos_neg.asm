include 'emu8086.inc'
;MOV AX,5
;MOV BX,6
;MUL BX  
print 'Enter Number' 
call scan_num
mov ax,cx
shl ax,1
cmp ax,0
;je zero
;jg p
;jl n
jnc p;     jnc jump if no carry, here p is a label(variable) indicating positive 
jc n;     jc jump if carry
p:
    print 'positive_number'
    hlt  ; like break statement
n:
    print 'negative_number'
    hlt
     
zero:
    print 'Zero is neither pos or neg'
    hlt
ret   
    define_scan_num
    define_print_num_uns
    define_print_num