include 'emu8086.inc'
print "enter starting number:"
call scan_num     
add cx,1
mov s,cx
printn
print "enter ending number:"
call scan_num
mov e,cx
printn  
f:     
   mov cx,01
   f2:    
   mov ax,s
   cmp cx,ax 
   jg d
   mov dx,00
   div cx
   inc cx 
   cmp dx,00    
   je c
    jmp f2
  
  c:
    inc count
    jmp f2   
  d:
    cmp count,2
    je p
    jne a
    p:
     mov ax,s
     call print_num
     print " "
    a:
      add ax,1 
      mov s,ax
      mov count,0
      cmp ax,e
      jbe f
      hlt
   count dw 00
   s dw 00
   e dw 00
   define_scan_num
   define_print_num
   define_print_num_uns