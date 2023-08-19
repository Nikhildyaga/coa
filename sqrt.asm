include 'emu8086.inc'
print "enter the number:"
call scan_num 
printn
mov bx,01
f:
    mov ax,bx
    mul bx
    inc bx 
    cmp ax,cx  
    jge f2 
    jmp f
 f2:
    cmp ax,cx
    je f3
    print "not a perfect square number"
    hlt
f3:
     print "perfect square"
     hlt  
   ret
  s dw 00
  define_scan_num
  define_print_num
  define_print_num_uns