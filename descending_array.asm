include 'emu8086.inc'
mov si,00
mov di,00

scanf:
    call scan_num
    mov al,cl 
    printn
    mov a[si],al
    cmp si,5
    jae x
    inc si 
    ;inc si
    jmp scanf
             
x:
    mov si,00
    jmp k
k:
    mov al,a[si]
    mov bl,a[si+1]
    cmp bl,al
    jae k1
    jb k3

k1:
    mov a[si],bl
    mov a[si+1],al
   ; inc si
    inc si
    cmp si,5
    jb k
    jae k2
       
   
k3:
    ;inc si
    inc si
    cmp si,5
    jb k
    jae k2 

k2:
    ;inc di
    inc di
    cmp di,6
    jb x
    mov si,0
    mov ax,0
    
    
    
print:
    mov al,a[si]
    printn
    print 'ascending order:'
    call print_num
   ; inc si
    inc si
    cmp si,6
    jb print
    jae end
    
end:
 ret
    
    

    
    

define_scan_num
define_print_num
define_print_num_uns
a db ?
d db ?
