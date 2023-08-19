include 'emu8086.inc'
print 'Enter a string with '$' at the end: '
    mov si,2
    lea dx,str
    mov ah,10
    int 21h             
    
strlen: 
    ;mov dl,str[si]
    ;mov ah,02
    ;int 21h
    cmp str[si],'$'
    je length
    inc count
    inc si
    jmp strlen
    
length:
    mov ax,count
    printn
    print 'Length of string  '
    call print_num
 
ret
    str db 20 dup('$') 
    count dw 0
    define_print_num_uns     
    define_print_num