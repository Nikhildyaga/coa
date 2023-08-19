include 'emu8086.inc'

print 'enter a number'

call scan_num 
 
mov var,cx
mov ax,cx

mov bx,10
  
;addition of digits in nummber
addition: 
    mov dx,0
    div bx
    add sum,dx
    cmp ax,0
    jne addition
    je next
    
next: 
    mov ax,sum
    printn
    print 'sum di '
    call print_num
    printn 
    jmp reverse

;reverse the sum value
reverse: 
    mov dx,0
    div bx
    mov var2,ax
    mov var3,dx
    mov ax,rev
    mul bx
    add ax,var3 
    mov rev,ax
    mov ax,var2
    cmp ax,0
    jne reverse
    je check

;checking for magic number
check: 
    mov ax,rev
    printn  
    print 'reverse sum'
    print ' '
    call print_num
    printn
    mov ax,sum
    mov bx,rev
    mul bx
    
    cmp ax,var
    je true
    jne false

true:
    printn
    mov ax,var
    call print_num
    print ' '
    print 'Magic number'
    ret
                         
false:
    printn 
    mov ax,var
    call print_num
    print ' '
    print 'Not Magic number'  
    ret
    
    
var dw 0
var1 dw 0
sum dw 0 
rev dw 0 
var2 dw 0 
var3 dw 0

define_scan_num
define_print_num_uns 
define_print_num