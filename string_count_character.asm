include 'emu8086.inc'

mov si,0
check:
    cmp msg[si],'$'
    je break
    inc count
    inc si
    jmp check
    
break:
     mov al,count 
     call print_num
     ret
 
msg db "hello$"    
count db 0 
define_print_num
define_print_num_uns
define_scan_num
  