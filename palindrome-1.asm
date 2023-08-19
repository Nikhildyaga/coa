include 'emu8086.inc'
call scan_num
mov ax,cx 
mov bx,10
lo:      
    mov dx,00 
    div bx
    mov q,ax
    mov r,dx
    mov ax,sum
    mul bx
    add ax,r
    mov sum,ax
    mov ax,q   
    cmp ax,00 
    je printf 
    jne lo
    
printf:
    cmp sum,cx
    je pal
    jne notpal  
pal:
    print 'palindrome'
    ret
notpal:
    print 'not palindrome'
    ret
define_scan_num
define_print_num
define_print_num_uns
q dw 00  
r dw 00
sum dw 00
    