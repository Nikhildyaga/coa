;perfect number
include 'emu8086.inc'
print "enter number:"
call scan_num
mov ax,cx
mov bx,ax
mov temp,ax 
printn
dec cx
x:
   mov ax,temp ;becoz while dividing ax changes
   mov dx,0
   div cx         
   cmp dx,0
   je y
   
   loop x
   
y:
   add sum,cx
   dec cx
   cmp cx,0
   je p
   
   jmp x
   
p:
   cmp sum,bx
   je n
   print "NOT A PERFECT NUMBER" 
   ret
   
n:
     print "PERFECT NUMBER"
     ret
     
     
 sum dw 0
 temp dw 0
 
 ret
 define_scan_num    
 define_print_num  
 define_print_num_uns
 