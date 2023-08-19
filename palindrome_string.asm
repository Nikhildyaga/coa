include 'emu8086.inc'

print 'enter string: '
mov ah,10
mov dl,offset str
mov str,20
int 21h

mov si,2

count:
    cmp str[si],'$'
    je next
    inc si 
    inc c
    jmp count

next: 
    dec c
    mov ax,c
    printn
    call print_num
    
    sub si,2
    mov di,2
    jmp palindrome

palindrome:
    cmp si,di
    je yes
    mov al,str[di]
    cmp al,str[si]
    jne no
    inc di
    dec si
    jmp palindrome
    
yes:
    printn
    print 'palindrome'
    ret

no:
    printn
    print 'not palindrome'
    ret    

str db 30 dup('$')
c dw 0 
define_print_num
define_print_num_uns