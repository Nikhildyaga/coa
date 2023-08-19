include 'emu8086.inc'
;call scan_num
mov si,0 
print "Enter array elements:"  
loop:
call scan_num
printn
mov arr[si],cx
inc si
inc si
cmp si,n
je x
jmp loop

x: 
mov si,0
print "array elements are..."
jmp func

func:
mov ax,arr[si]
call print_num 
print " "
inc si
inc si
cmp si,n
je x1
jmp func

x1:
ret   
define_scan_num
define_print_num
define_print_num_uns
arr dw ?,?,?,?,?,?,?
n dw 10


              
              
              