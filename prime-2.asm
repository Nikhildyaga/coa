 ;prime or not
include 'emu8086.inc'
print "enter number:"
call scan_num
mov ax,cx 
mov temp,cx  
mov bx,00
printn
f:
  mov ax,temp  
  mov dx,00
  div cx  
  dec cx
  cmp dx,00
  je p 
  jmp f
  
  
p:
    inc bx 
    cmp cx,00
     je d   
    jmp f   
    
d:
   cmp bx,02
   je c
   print "not prime"
   hlt
   
c:
       print "prime"
      hlt 
      
  ret    
 temp dw 0  
 
 ret
 define_scan_num
 define_print_num
 define_print_num_uns
  
  