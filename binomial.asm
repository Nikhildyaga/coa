;binomial    for upto 8 bits
include 'emu8086.inc'
print "enter n value:"
call scan_num
mov n,cx
printn
print "enter r value:"
call scan_num
mov r,cx
printn
mov ax,n
sub ax,r
mov s,ax 
mov cx,s 
m1:   ;for n-r=s factorial   
  
   cmp cx,01
  je m2  
  dec cx
  mul cx
  jmp m1
m2:    ; to store n-r=s factorial
  mov s1,ax 
  mov ax,r
  mov cx,r 
m3:   ; for  r factorial
   cmp cx,01
  je m4 
  dec cx   
  mul cx
  jmp  m3
m4:   ;to store r factorial value
  mov s2,ax
  mov ax,n
   mov cx,n 
m5:   ; for n factorial value
   cmp cx,01
   je m6    
   dec cx 
   mul cx
   jmp m5
m6:
  mov s3,ax
  mov ax,s1
  mul s2 ;denominator n-r and r factorial multiplication
  mov s4,ax
  mov ax,s3
  div s4
  call print_num
  hlt
  
  ret
  n dw 00
  r dw 00 
  s dw 00
  s1 dw 00
  s2 dw 00
  s3 dw 00
  s4 dw 00
  ret
  define_scan_num
  define_print_num
  define_print_num_uns