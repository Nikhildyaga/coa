include 'emu8086.inc'

print 'enter n value'
call scan_num 
printn

mov n,cx
mov var1,cx

print 'enter r value'
call scan_num
printn

mov r,cx
mov var2,cx

mov ax,1
mov bx,1

;function for n factorial
n_fact:
    mul n
    dec n
    cmp bx,n
    je next
    jne n_fact
next:
    printn
    print 'n!== '
    print ' '
    call print_num
    printn
    mov n,ax
    mov ax,var1
    sub ax,var2
    mov r,ax 
    mov ax,1
    jmp n_r_fact 
    
;calculation of n-r factorial
n_r_fact:        
    mul r
    dec var1
    cmp bx,1
    jne n_r_fact
    je permutation                   
    
;value of nPr
permutation: 
    print 'n-r!== '
    print ' '
    call print_num
    printn
    mov r,ax
    mov ax,n
    mov dx,0
    div r
    printn
    print 'nPr== '
    print ' '
    call print_num
    printn
    jmp lable1 

lable1:
    mov dx,r
    mov var1,dx
    
    mov dx,var2
    mov r,dx
    
    mov ax,1
    mov bx,1
    jmp r_fact
    
r_fact:
    mul r
    dec r
    cmp bx,r
    jne r_fact
    je combination

combination:
    print 'r!=='
    print ' '
    call print_num 
    printn
    
    mul var1
    mov r,ax
    mov dx,0
    mov ax,n
    div r
    
    print 'nCr== '
    print ' '
    call print_num
    ret

        
n dw 0
r dw 0
var1 dw 0
var2 dw 0
define_scan_num
define_print_num_uns
define_print_num