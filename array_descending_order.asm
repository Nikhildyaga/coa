include 'emu8086.inc'
mov si,00
mov di,00
         
scanf:
    call scan_num
    printn
    mov al,cl
    mov a[si],al
    cmp si,04 
    inc si
    jae x
    jb scanf
    
    
x:
    mov si,00
    jmp k
    
    
    
k:
    mov al,a[si]
    mov bl,a[si+1]
    cmp bl,al
    ja k1
    jbe k2
    
k1:
    mov a[si],bl
    mov a[si+1],al
    cmp si,05
    inc si
    jae k3
    jb k
    
    
k2:
    cmp si,05
    inc si
    jae k3
    jb k
    
    
k3:
    inc di
    cmp di,05
    jb x
    mov si,00
    mov ax,00
    print 'numbers in order:' 
    
    
    
    
        
print:
    printn 
    mov al,a[si]
    call print_num
    mov al,cl
    mov a[si],al
    inc si
    cmp si,05
    jae end 
    jb print
    
end:
    ret
    







define_scan_num
define_print_num
define_print_num_uns
a db ?