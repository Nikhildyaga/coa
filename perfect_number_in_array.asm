include 'emu8086.inc'

print 'enter the no. of elemnts in array' 
print ' ' 
printn      
call scan_num
mov n,cx
mov dx,0 
mov ax,n
mul var
mov n,ax
mov bp,0 
print 'enter the array'
print ' '
printn

store:
    mov si,0
     cmp dx,n
     je  temp
     call scan_num
     mov si,dx
     mov arr[si],cx
     add dx,2  
     printn
     jmp store 
;display:
;    cmp si,n
 ;   je temp
  ;  mov ax,arr[si]
   ; call print_num
   ; print ' '
   ; add si,2     
    ;jmp display 

temp:
    printn
    jmp label1

label1:
     cmp bp,n
     je break 
     mov ax,arr[bp]
     mov dx,0
     div var
     mov cx,ax
     mov si,1  
     mov sum,0
     jmp check1
     
check1:
    mov ax,arr[bp]
    cmp si,cx
    jg check2
    mov dx,0
    div si
    cmp dx,0
    jne incr1
    add sum,si
    inc si
    jmp check1 
    
incr1:   
    inc si
    jmp check1

check2:       
    mov ax,arr[bp]
    cmp sum,ax
    jne incr2
    mov ax,arr[bp]
    call print_num
    print ' '
    add bp,2 
    jmp label1

incr2:
    add bp,2
    jmp label1


break:             
    ret    
    
n dw 0
var dw 2
count dw 0 
var1 dw 0
var2 dw 0
sum dw 0
arr dw n dup(?)
define_print_num
define_print_num_uns
define_scan_num