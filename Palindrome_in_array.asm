;ARRAY READ AND PRINT PALINDROME NOS IN IT
include 'emu8086.inc'
print 'Enter Size:  '
call scan_num
mov n,cx
mov s,cx
mov si,0
mov bp,0
printn
print 'Enter Nos  '
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
    print 'Palindrome Nos in this Array '
    jmp checkpalin
    
checkpalin:
    mov ax,arr[bp]
    add bp,2
    inc n
    mov num,ax
    mov cx,0
    mov dx,n
    cmp dx,s
    jg flagvalue
    jle digits

digits:
    mov bx,10
    mov dx,0
    div bx
    mov Q,ax
    mov R,dx 
    mov ax,cx
    mul bx
    mov cx,ax
                                                 
    add cx,R
    mov ax,Q
    cmp ax,0
    je check
    jne digits
    
check:
    mov ax,num
    cmp ax,cx
    je printpalin
    jne notpalin
   
printpalin:
    printn
    call print_num
    mov flag,1
    mov dx,s
    cmp n,dx
    je flagvalue
    jne checkpalin
    
notpalin:
    mov dx,s
    cmp n,dx
    je flagvalue
    jne checkpalin
    
flagvalue:
    cmp flag,0
    je nopalins
    jne end
    
nopalins:
    printn
    print 'No Palindrome Nos in this array.'
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