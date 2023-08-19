include 'emu8086.inc'

mov si,0
check:
    cmp msg[si],'$'
    je break
    inc count
    inc si
    jmp check
    
break: 
    dec count
     dec si
     jmp dis
 dis:
     cmp si,0
     jl break2
     mov dl,msg[si]
     mov ah,2
     int 21h
     dec si
     jmp dis
     
break2:
   ret          
     
msg db "hello world$"    
count db 0 
define_print_num
define_print_num_uns
define_scan_num