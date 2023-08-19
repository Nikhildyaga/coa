include 'emu8086.inc' 

mov si,0

label1:
   cmp si,10
   je display
   mov ax,arr[si]
   call print_num
   print ' '
   add ax,sum
   mov sum,ax
   add si,2
   jmp label1 

display: 
    printn
    mov ax,sum
    print 'sum==' 
    print ' '
    call print_num
    ret
    



sum dw 0
arr dw 1,2,3,4,15
define_scan_num
define_print_num
define_print_num_uns