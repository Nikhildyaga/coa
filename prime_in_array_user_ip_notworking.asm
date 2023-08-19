include 'emu8086.inc'
;print 'Enter size:  '
;call scan_num
;mov n,cx
mov cx,7
mov n,0
mov s,cx
;mov si,0
mov bp,0
printn
;print 'Enter elements:'
;jmp read

;read:
;    printn
;    call scan_num
;    mov arr[si],cx
;    add si,2
;    dec n
;    cmp n,0
;    je statement
;    jne read

statement:
    printn
    print 'Prime Nos in array:  '
    jmp selectnum

selectnum: 
    mov bx,0 
    mov count,0
    ;sub si,2 
    mov ax,arr[bp]
    add bp,2
    mov num,ax
    ;mov cx,2
    ;div cx
    ;mov half,ax
    mov dx,n
    cmp dx,s
    je stop
    jne divide
    
divide:
    inc bx
    mov ax,num
    mov dx,0
    div bx
    cmp dx,0
    je factor
    jne divide
    
factor:
    inc count
    cmp bx,num
    je check
    jne divide
    
check:
    cmp count,2
    je printprime
    jne nextnum
    
printprime:
    mov ax,num
    printn
    call print_num
    inc n
    mov flag,1
    mov dx,n
    cmp dx,s
    je stop
    jne selectnum
    
nextnum:
    inc n
    mov dx,n
    cmp dx,s
    je stop
    jne selectnum
    
stop:
    cmp flag,0
    je noprimes
    jne end
    
noprimes:
    printn
    print 'No primes In array'
    hlt
    
end:
    printn
    print 'End'
ret
    n dw 0
    s dw 0
    num dw 0     
    half dw 0
    count dw 0
   ; arr dw n dup<?> 
   arr dw 2,3,5,4,6,7,8
    flag dw 0
    define_scan_num
    define_print_num
    define_print_num_uns
