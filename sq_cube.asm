include 'emu8086.inc'
print "enter the number:"
call scan_num    
printn
s:
  mov ax,cx
  mul cx
  print  "square is:"
  call print_num 
  printn
  mul cx       
  print "cube is:"
  call print_num
  hlt 
  define_scan_num
  define_print_num
  define_print_num_uns