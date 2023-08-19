include 'emu8086.inc'
mov si,0
mov bl,5 


label: 
 call scan_num
 printn
 mov arr[si],cl
 mov al,arr[si]
  inc si
cmp si,5
jne label
mov si,0 
 jmp l2

 
l2: 
   mov al,arr[si]
    cmp al,min
    jb l3
     inc si
     cmp si,5
    jne l2  
     mov al,min
    call print_num
       ret

l3:
    mov min,al
    inc si
    cmp si,5
    jne l2  
    mov al,min
    call print_num
    ret

     
arr db ?,?,?,?,?

define_scan_num
define_print_num
define_print_num_uns
di db 0
sum db 0 
min db 100