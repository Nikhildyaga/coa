include 'emu8086.inc'
print 'enter the size of array: '
print ' ' 
call scan_num   
mov n,cx
printn

mov si,0
mov bp,0
mov ax,n 
mul var       
call print_num  
printn
mov dx,ax

label:
    cmp si,dx
    je display
    call scan_num
    mov arr[si],cx
    add si,2 
    printn
    jmp label
  
display:
    cmp bp,dx
    je break
    mov ax,arr[bp]
    call print_num
    print ' '
    add bp,2
    jmp display
break:
     printn
     mov si,0
     mov bp,0
     jmp label1
label1:
    mov bp,si 
    cmp si,dx
    je label2
    jmp sort

sort: 
    mov ax,arr[si]
    cmp bp,dx
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
    print 'the array is: '
    print ' '
    jmp display2
display2:
    cmp si,dx
    je break2
    mov ax,arr[si]
    call print_num
    print ' '
    add si,2  
    jmp display2

break2:
    ret


n dw 0
arr dw n dup(?)   
var dw 2 
define_print_num
define_scan_num
define_print_num_uns