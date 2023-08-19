;fibonacci series
include 'emu8086.inc'
print "enter n value:"
call scan_num
printn
f:
  mov ax,00 
  mov a,ax
  call print_num 
  print " "  
  dec cx
  mov ax,01 
  mov b,ax
  call print_num  
  print " "  
  dec cx
fib:
    cmp cx,00
    je p
    mov ax,b
    add ax,a
    call print_num
    print " "
    mov bx,b
    mov a,bx
    mov b,ax
    loop fib
    
p:
hlt

ret
a dw 0
b dw 00   
  
  ret
  define_scan_num
  define_print_num
  define_print_num_uns