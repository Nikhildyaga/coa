include 'emu8086.inc'
print 'Enter a string  '
    lea dx,str
    mov ah,10
    int 21h             
    
    printn
    lea dx,str+2
    mov ah,09
    int 21h
 
ret
    str db 20 dup('$')     