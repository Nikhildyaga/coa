include 'emu8086.inc'
mov si,0
;mov ax,a[si] 
print "Enter size:" 
call scan_num
mov ax,cx
;mov ax,5 
mov bx,2
mul bx
mov dx,ax 
printn
;mov ax,a[si]
scanf:
cmp si,dx;i keep cx here but i didnt check that cx is changing below from inputs
je p
call scan_num
printn
mov a[si],cx
inc si
inc si 
jmp scanf

p:
mov si,0
mov ax,a[si]
jmp func

func:
cmp si,8
jge x1
inc si
inc si 
cmp ax,a[si]
jg x
mov ax,a[si]
jmp func

x:
jmp func
x1:
print "max:"
call print_num

define_scan_num
define_print_num
define_print_num_uns
;a dw 1,5,3,7,2checked for this input hold good
a dw ?   
;n dw 0 i used n but i got wrong output