;palindrome
 include 'emu8086.inc'
 print "enter number:"
 call scan_num
 mov ax,cx
 ;mov cx,ax
 mov bx,10  
 printn
 p:
   mov dx,00
   div bx 
   mov q,ax
   mov r,dx 
   mov ax,sum
   mul bx
   add ax,r
   mov sum,ax
   mov ax,q
   cmp ax,00
   je d
   jmp p
   
 d:
   cmp cx,sum
   je a
   print "not a palindrome"
   hlt
   
a:
   print "palindrome"   
   hlt
 
 ret
 sum dw 00
 r dw 00 
 q dw 00
 ret
 define_scan_num
 define_print_num
 define_print_num_uns