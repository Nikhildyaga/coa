include 'emu8086.inc'

print 'enter a number: '
call scan_num

mov n,cx
mov ax,cx

label: 
    cmp ax,0
    je next
    inc count
    mov dx,0
    div var  
    jmp label

next:
    mov ax,n
    jmp armstrong

armstrong:  
    mov bx,count
    cmp ax,0
    je check
    mov dx,0
    div var
    mov rem,dx
    mov que,ax
    mov ax,rem
    jmp sum1
    
sum1:
    cmp bx,1
    je p
    mul rem
    dec bx
    jmp sum1 
    
p:
    add sum,ax
    mov ax,que
    jmp armstrong

check: 
    mov ax,sum
    cmp ax,n
    je yes
    printn
    print 'not armstrong' 
    ret
    
yes:
    printn
    print 'armstrong'
    ret

que dw 0
rem dw 0
temp dw 0
var dw 10
n dw 0
sum dw 0
count dw 0
define_print_num
define_print_num_uns
define_scan_num