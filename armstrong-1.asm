;armstrong number
include 'emu8086.inc'
print "enter number:"
call scan_num
printn
;mov cx,153
mov n,cx
mov ax,cx 
mov bx,10
mov temp,cx
f:
  mov dx,00
  div bx
  inc c
  cmp ax,00
  je a
  jmp f
  
a:
  mov ax,n
  jmp a2
  
a2:
  mov dx,00
  div bx
  mov q,ax
  mov r,dx
  mov cx,c 
  mov ax,r
    m:
       mul r 
       cmp cx,02 ;cx decremented automatically
       je a3
       loop m   
a3:   
 add ax,sum
  mov sum,ax 
  mov ax,q
  cmp ax,00
  je p
  jmp a2
  
p:
   mov ax,sum
   cmp ax,temp
   je armstrong
   print "not armstrong"
   hlt
   
armstrong:
   print "armstrong"     
   hlt
   
 ret
 n dw 00
 r dw 00
 q dw 00
 temp dw 00
 sum dw 00
 c dw 00
 ret 
 define_scan_num
 define_print_num
 define_print_num_uns