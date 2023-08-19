include 'emu8086.inc'
mov si,0
scanf:
call scan_num
printn
mov a[si],cx
inc si
inc si
cmp si,10
je x
jmp scanf

x:
mov si,0
jmp func

func:
mov ax,a[si]
call print_num
print " "
cmp si,8
je x1
inc si
inc si
jmp func

x1:
mov si,0 
mov ax,a[si]
jmp min
min:
inc si
inc si
cmp ax,a[si]
jg s
cmp si,8
je x2
jmp min

s:
mov ax,a[si]
cmp si,8
je x2
jmp min

x2: 
printn
print "min:"
call print_num 
jmp x3

x3:
mov si,0
mov ax,a[si]
jmp max

max:
inc si
inc si
cmp ax,a[si]
jl r
cmp si,8
je x4
jmp max

r:
mov ax,a[si]
cmp si,8
je x4
jmp max

x4:
printn
print "max:"
call print_num
ret


define_scan_num
define_print_num
define_print_num_uns
a dw ?