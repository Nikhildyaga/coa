;ARRAY READ AND PRINT NOS IN ASCENDING AND DESCENDING ORDER
include 'emu8086.inc'
print 'Enter Size:  '
call scan_num
mov n,cx
mov s,cx
mov si,0
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
    print 'Sorted Array(Ascending order) '
    sub si,2
    mov lastindex,si
    jmp start
    
start:
    inc n 
    mov si,0
    mov bp,si
    add bp,2
    mov ax,s
    cmp n,ax
    je printasc
    jne sort
    
sort:
    ;cmp arr[si],arr[bp]
    mov ax,arr[si]
    mov bx,arr[bp]
    cmp ax,bx
    jg swap 
    add si,2
    add bp,2
    mov bx,0
    cmp si,lastindex
    je start
    jne sort
    
swap:
    mov arr[bp],ax
    mov arr[si],bx
    add si,2
    add bp,2
    mov bx,0
    cmp si,lastindex
    je start
    jne sort
    
printasc:
    mov ax,arr[bx] 
    call print_num
    print ' '
    dec n
    add bx,2
    cmp n,0
    je stmt2
    jne printasc

stmt2:          
    printn
    print 'Descending order '
    jmp printdesc
    
printdesc:   
    sub bx,2
    mov ax,arr[bx]
    call print_num
    print ' '
    cmp bx,0
    je stop
    jne printdesc
            
stop:
    hlt
    
ret
    s dw 0
    n dw 0
    lastindex dw 0
    arr dw n dup(?) 
    define_print_num_uns
    define_print_num
    define_scan_num