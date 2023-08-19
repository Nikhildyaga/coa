;PALINDROME NUMBER
include 'emu8086.inc'
print 'Enter a No.'
gotoxy 0,1
call scan_num
mov num,cx
mov ax,cx
mov bx,10

rev_num:
    mov dx,0
    div bx
    mov Q,ax
    mov R,dx
    mov ax,sum
    mul bx
    mov sum,ax
    mov cx,R
    add sum,cx
    mov ax,Q
    cmp ax,0
    je check
    jne rev_num
    
check:
    mov ax,sum
    cmp ax,num
    je yes
    jne no
    
yes:
    gotoxy 0,2
    print 'PALINDROME NUMBER--AS REVERSE NUMBER IS '
    ;gotoxy 0,3
    call print_num
    hlt
no:
    gotoxy 0,2
    print 'NOT A PALINDROME NUMBER-- AS REVERSE NUMBER IS '
   ; gotoxy 0,3
    call print_num
    hlt
    
ret 
    num dw 0
    sum dw 0
    Q dw 0
    R dw 0
    define_print_num_uns
    define_print_num
    define_scan_num