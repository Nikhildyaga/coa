;DECIMAL TO BINARY
include 'emu8086.inc'
print 'Enter Decimal No.  '
call scan_num
mov ax,cx
mov si,0
mov cx,0
printn 
print 'Binary No.  '

divide:
   mov bx,2
   mov dx,0
   div bx
   inc si       ;for 16 bit reg inc by 2
   inc si
   inc cx
   mov arr[si],dx 
   cmp ax,0
   je printbinary
   jne divide
   
printbinary:
   mov ax,arr[si]
   call print_num
   dec si
   dec si
   dec cx
   cmp cx,0
   je stop
   jne printbinary
    
stop:
   hlt

ret 
    n dw 0
    arr dw n dup(?)
    define_print_num_uns
    define_print_num
    define_scan_num