include 'emu8086.inc'
mov ax,5
mov bx,15
mov temp,ax
cmp ax,bx
jl x
mov i,bx
jmp func
x:
mov temp,ax
mov ax,bx
mov bx,temp
mov i,bx
jmp func

func:
mov dx,0
div i
cmp dx,0
je x1
dec i
mov ax,temp
jmp func

x1:
mov dx,0
mov ax,bx
div i
cmp dx,0
je x2
dec i
mov ax,temp
jmp func

x2:
mov ax,i
call print_num
ret
 
define_print_num
define_print_num_uns
i dw 1
temp dw 0
