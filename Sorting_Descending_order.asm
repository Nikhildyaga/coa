include 'emu8086.inc'

mov si,0

label1:
    mov bp,si 
    cmp si,12
    je label2
    jmp sort

sort: 
    mov ax,arr[si]
    cmp bp,12
    je label3
    cmp ax,arr[bp]
    jl swap 
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
    jmp display
display:
    cmp si,12
    je break
    mov ax,arr[si]
    call print_num
    print ' '
    add si,2  
    jmp display

break:
    ret
    
    
    
arr dw 8,0,12,15,9,1 

define_print_num
define_print_num_uns