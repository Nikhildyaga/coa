;ARRAY READ AND PRINT PRIME NOS IN IT
include 'emu8086.inc'
print 'Enter Size:  '
call scan_num
mov n,cx
mov s,cx
mov si,0
mov bp,0
printn
print 'Enter elements  '
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
    print 'Prime Nos in Array '
    jmp checkprime
    
checkprime:
    mov ax,arr[bp]
    add bp,2
    inc n
    mov num,ax
    mov bx,2
    mov cx,0
    mov dx,0
    div bx
    mov half,ax
    mov bx,0
    mov dx,n
    cmp dx,s
    jg stop
    jle divide

divide:
    cmp bx,half
    je check
    inc bx
    mov ax,num
    mov dx,0
    div bx
    cmp dx,0
    je factor
    jne divide
    
factor:
    inc cx
    cmp bx,half
    je check
    jne divide
    
check:
    cmp cx,1
    je printprime
    jne notprime
    
printprime:
    printn
    mov ax,num
    call print_num
    mov flag,1
    mov dx,s
    cmp n,dx
    je stop
    jne checkprime
    
notprime:
    mov dx,s
    cmp n,dx
    je stop
    jne checkprime
    
stop:
    cmp flag,0
    je noprime
    jne end
    
noprime:
    printn
    print 'No Prime Nos in this array.'
    hlt
    
end:
    printn
    print 'End'
    hlt
    
ret
    s dw 0
    n dw 0 
    num dw 0
    half dw 0
    flag dw 0
    arr dw n dup(?) 
    define_print_num_uns
    define_print_num
    define_scan_num