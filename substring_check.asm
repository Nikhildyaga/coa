include 'emu8086.inc'
readmainstr:
    print 'Enter Main string  '
    lea dx,mstr
    mov ah,10
    mov mstr,30
    int 21h
    jmp readsubstr
    
readsubstr:
    printn
    print 'Enter a substring  '
    lea dx,sstr
    mov ah,10 
    mov sstr,30
    int 21h   

    mov si,2
    mov di,2
    jmp check1compare
    
check1compare:
    mov bh,mstr[si]
    cmp sstr[di],bh
    je traverseboth
    jne resetsub
    
traverseboth:
    inc si
    inc di
    jmp checksubstr
    
resetsub:
    ;inc si
    mov di,2
    inc count
    cmp count,2
    jge incsi
    jmp checkmainstr
    
incsi:
    inc si
    mov count,0
    jmp checkmainstr
         
checksubstr: 
    cmp sstr[di],'$'
    je found 
    jne checkmainstr
    
checkmainstr:
    cmp mstr[si],'$'
    je notfound
    jne check1compare   

found:
    printn
    print 'Substring Found'
    hlt
    
notfound:
    printn
    print 'Substring Not Found'
    hlt
    
ret 
    mstr db 30 dup('$')
    sstr db 30 dup('$')
;    mstr db "aazjaajab$"
;    sstr db "aj$"
;    mstr db "rguktbasar$"
;    sstr db "basar$"   
    count dw 0
    define_print_num   
    define_print_num_uns 