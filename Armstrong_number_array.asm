include 'emu8086.inc'

print 'enter  number of elements:'
print ' '
call scan_num 
printn
mov n,cx
mov ax,n
mul var1
mov num,ax
mov si,0
mov di,0

label:
    cmp si,num
    je array
    call scan_num 
    printn
    mov arr[si],cx
    add si,2
    jmp label
    
array:
    cmp di,num
    je br
    mov ax,arr[di]
    jmp count
      
count: 
    cmp ax,0
    je break
    mov dx,0
    div var
    inc c
    loop count
    
break: 
    mov ax,c  
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
    add ax,sum
    mov sum,ax
    mov ax,q   
    mov bp,c
    jmp armst 
         
break2:
     mov ax,sum   
     cmp ax,arr[di]
     je true
     add di,2
     jmp array
        
true:     
    call print_num
    print ' '  
    add di,2
    jmp array
br:
    ret     
 

n dw 0
sum dw 0
c dw 0 
r dw 0
q dw 0
var dw 10 
var1 dw 2  
num dw 0
arr dw n dup(?)
define_print_num
define_print_num_uns
define_scan_num

 