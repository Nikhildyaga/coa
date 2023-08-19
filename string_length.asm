include 'emu8086.inc'

mov si,0

len: 
    
    cmp str[si],'$'
    je print
    inc si
    inc count
    jmp len
    
    
print:
    mov ax,count
    call print_num
    
 
count dw 00 
define_print_num
define_print_num_uns

str db 'madam$'