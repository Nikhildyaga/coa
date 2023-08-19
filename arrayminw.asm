include 'emu8086.inc'
mov si,0
scanf:
cmp si,10 
je p
call scan_num 
printn
mov a[si],cx
inc si
inc si
jmp scanf  

p: 
dec si
dec si
mov ax,a[si]
;mov ax,a[si]
;mov si,0
;jmp func
call print_num
print " " 
cmp si,0
je func
jmp p

;func:
;cmp si,8
;je x
;inc si
;inc si
;cmp ax,a[si]
;jl x1
;mov ax,a[si]
;jmp func

;x1:
;jmp func

;x:
;call print_num
func:
mov ax,a[si]
jmp func1

func1:
cmp si,8
je x
inc si
inc si
cmp ax,a[si]
jl x1
mov ax,a[si]
jmp func1

x1:
jmp func1

x:
call print_num


define_print_num
define_print_num_uns
define_scan_num
a dw ? 



