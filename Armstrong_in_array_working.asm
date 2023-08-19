;ARRAY READ AND PRINT ARMSTRONG NOS IN IT
include 'emu8086.inc'
print 'Enter Size:  '
call scan_num
mov n,cx
mov s,cx
mov si,0
mov bp,0
printn
print 'Enter 3 digit Nos  '
jmp read

read:
  printn
  call scan_num
  mov arr[si],cx
  add si,2
  dec n
  cmp n,0
  je statement
  jne read
  
statement:
    printn
    print 'Armstrong Nos in this Array '
    jmp checkarm
    
checkarm:
    mov ax,arr[bp]
    add bp,2
    inc n
    mov num,ax
    mov cx,0
    mov dx,n
    cmp dx,s
    jg stop
    jle digits

digits:
    mov bx,10
    mov dx,0
    div bx
    mov Q,ax
    mov R,dx 
    mov ax,R
    mov bx,R
    mul bx
    mul bx
    add cx,ax
    mov ax,Q
    cmp ax,0
    je check
    jne digits
    
check:
    mov ax,num
    cmp ax,cx
    je printarm
    jne notarm
   
printarm:
    printn
    call print_num
    mov flag,1
    mov dx,s
    cmp n,dx
    je flagvalue
    jne checkarm
    
notarm:
    mov dx,s
    cmp n,dx
    je flagvalue
    jne checkarm
    
flagvalue:
    cmp flag,0
    je noarm
    jne end
    
noarm:
    printn
    print 'No Armstrong Nos in this array.'
    hlt
    
end:
    printn
    print 'End'
    hlt
    
ret
    s dw 0
    n dw 0 
    num dw 0
    Q dw 0
    R dw 0
    flag dw 0
    arr dw n dup(?) 
    define_print_num_uns
    define_print_num
    define_scan_num