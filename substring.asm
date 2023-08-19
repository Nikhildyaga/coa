include 'emu8086.inc'

mov ah,10
mov dx,offset str1
mov str1,20
int 21h

printn

mov ah,10
mov dx,offset str2
mov str2,20
int 21h

mov si,2
mov di,2
count1:
    cmp str1[si],'$'
    je count2
    inc c1
    inc si
    jmp count1
count2:
    cmp str2[di],'$'
    je label
    inc c2 
    inc di
    jmp count2
label:
    dec c1
    dec c2 
    mov bl,c2
    mov si,2
    mov di,2
    jmp check 

check:
    cmp c1,0
    je no
    dec c1
    mov al,str1[si]
    cmp al,str2[di]
    je next
    inc si
    mov di,2
    mov c2,bl
    jmp check
next:
    inc si
    inc di
    dec c2
    cmp c2,0
    je yes
    jmp check

yes:
    printn
    print 'found'
    ret
no:
    printn
    print 'not found'
    ret

c1 db 0
c2 db 0
str1 db 20 dup('$')
str2 db 20 dup('$')