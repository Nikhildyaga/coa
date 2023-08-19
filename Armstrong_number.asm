include 'emu8086.inc'

print 'enter a number:'
print ' '
call scan_num
mov n,cx
mov ax,n

count: 
    cmp ax,0
    je break
    mov dx,0
    div var
    inc c
    loop count
    
break: 
    mov ax,c
    printn  
    print 'number count: '
    print ' ' 
    call print_num
    mov bp,c
    mov ax,n  
    jmp armst
       
armst:
    cmp ax,0
    je break2
    mov dx,0
    div var 
    mov q,ax 
    mov r,dx
    mov ax,r
    jmp addi
            
addi: 
     cmp bp,1
    je next   
    mul r   
    dec bp
    loop addi  
    
next:  
    printn 
    call print_num
    add ax,sum
    mov sum,ax
    mov ax,q   
    mov bp,c
    jmp armst 
         
break2:
     mov ax,sum   
     cmp ax,n
     je true
     jne false
        
true:
    printn
    print 'the Number is armstrong'
    hlt
     
false:
    printn
    print 'The number is not armstrong'
    hlt

n dw 0
sum dw 0
c dw 0 
r dw 0
q dw 0
var dw 10
define_print_num
define_print_num_uns
define_scan_num

 