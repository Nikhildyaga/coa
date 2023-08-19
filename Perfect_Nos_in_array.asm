;ARRAY READ AND PRINT PERFECT NOS IN IT
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
    print 'Perfect Nos in Array '
    jmp checkperfect
    
checkperfect:
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
    je factsum
    inc bx
    mov ax,num
    mov dx,0
    div bx
    cmp dx,0
    je factsum
    jne divide
    
factsum:
    add cx,bx
    cmp bx,half
    je check
    jne divide
    
check:
    mov ax,num
    cmp ax,cx
    je printperfect
    jne notperfect
    
printperfect:
    printn
    call print_num
    mov flag,1
    mov dx,s
    cmp n,dx
    je stop
    jne checkperfect
    
notperfect:
    mov dx,s
    cmp n,dx
    je stop
    jne checkperfect
    
stop:
    cmp flag,0
    je noperfect
    jne end
    
noperfect:
    printn
    print 'No perfect Nos in this array.'
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