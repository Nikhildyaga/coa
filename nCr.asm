;nCr
include 'emu8086.inc'
print 'Enter N value  '
call scan_num
mov N,cx
printn
print 'Enter R value  '
call scan_num                     ;           n!
mov R,cx                          ;  nCr = -------- 
mov cx,-1                         ;        (n-r)!r!
mov c1,-1

mov ax,N
mov bx,R
cmp ax,bx
jge order
jl error

error:
    printn
    print 'MATH ERROR!!!'
    hlt

order:
    cmp cx,0
    jl nfact
    je n_rfact
    jg rfact
    
    
nfact:
    inc cx
    mov ax,N
    mov bx,N
    cmp ax,1
    jle one
    jg Factorial
    
n_rfact:
    inc cx
    mov ax,N
    mov bx,R
    sub ax,bx
    mov bx,ax
    cmp ax,1
    jle one
    jg Factorial
    
rfact:
    inc cx
    mov ax,R
    mov bx,R
    cmp ax,1
    jle one
    jg Factorial

one:
    mov ax,1
    jmp store
    
Factorial:
    dec bx
    mul bx
    cmp bx,1
    je store
    jne Factorial
    
store:
    cmp c1,0
    jl nfstore
    je n_rfstore
    jg rfstore
    
nfstore:
    inc c1
    mov nf,ax
    jmp order 
    
n_rfstore:
    inc c1
    mov n_rf,ax
    jmp order
    
rfstore:
    mov rf,ax
    jmp ncr
    
ncr:
    mov ax,n_rf
    mov bx,rf
    mul bx
    mov bx,ax
    mov ax,nf
    mov dx,0
    div bx
    printn
    print 'nCr Value  '
    call print_num
    hlt
       
ret
    N dw 0
    R dw 0
    c1 dw 0
    nf dw 0
    n_rf dw 0
    rf dw 0
    define_print_num_uns
    define_print_num
    define_scan_num