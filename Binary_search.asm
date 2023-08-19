include 'emu8086.inc'

print 'enter number of elements in array: '
print ' '
call scan_num
printn

mov n,cx
mov ax,n 
mul var
mov di,ax
mov si,0 
 
 
label:
    cmp si,di
    je break
    call scan_num
    mov arr[si],cx
    add si,2 
    printn
    jmp label
  
 
break:
     printn
     mov si,0
     mov bp,0
     jmp label1
label1:
    mov bp,si 
    cmp si,di
    je label2
    jmp sort

sort: 
    mov ax,arr[si]
    cmp bp,di
    je label3
    cmp ax,arr[bp]
    jg swap 
    add bp,2
    jmp sort

label3:
    add si,2
    jmp label1
swap:   
    mov cx,arr[bp]
    mov arr[bp],ax
    mov arr[si],cx
    add bp,2
    jmp sort

label2:
    mov si,0 
    print 'the sorted array is: '
    print ' '
    jmp display 
display:
    cmp si,di
    je break4
    mov ax,arr[si]
    call print_num
    print ' '
    add si,2  
    jmp display 
    
break4:
     printn
     print 'enter a number to search: '
     print ' '
     call scan_num
     mov num,cx
     mov st,0  
     mov bx,n 
     dec bx
     mov nd,bx     
     jmp binary_search

binary_search:
    cmp st,bx
    je break5 
    mov ax,0
    add ax,st
    add ax,nd
    mov dx,0
    div var 
    cmp mid,ax
    je break6           
    mov mid,ax
    mov sp,mid
    mul var
    mov si,ax
    cmp arr[si],cx
    je find
    mov st,0
    mov bx,mid
    mov nd,bx 
    mov cx,num
    cmp arr[si],cx
    jg binary_search
    mov st,sp
    mov bx,n
    mov nd,bx
    jmp binary_search     
                       
break5:
    mov si,st  
    mov cx,num
    cmp arr[si],cx
    je find
    jne break6
                           
find:
    mov ax,0
    add ax,st
    add ax,nd 
    mov dx,0
    div var 
    add ax,1 
    printn
    print 'The value found at position : '
    call print_num 
    printn
    hlt

break6:
    printn 
    print 'The value not find'
    printn
    hlt   

n dw 0 
var dw 2
var1 dw 0 
arr dw n dup(?)  
st dw 0
nd dw 0
num dw 0 
mid dw 0

define_print_num
define_print_num_uns
define_scan_num 