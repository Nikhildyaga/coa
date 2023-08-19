include 'emu8086.inc'
print 'enter a number '
call scan_num 

mov al,cl 
  
mov bl,2

lable1: 

    mov ah,0  
    mov al,cl
    div bl
    cmp ah,0
     je notprime
     jne lable2   
     
lable2:  

    inc bl
    cmp bl,cl
    je prime
    jne lable1
    
define_scan_num   

notprime:  
    gotoxy 0,1
    print 'not prime'
    ret 
    
prime:  
    gotoxy 0,1
    print 'prime'
    ret
    