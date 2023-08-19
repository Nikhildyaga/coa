include 'emu8086.inc'
print 'Enter a string($ at the end)  '
mov si,2
lea dx,str
mov ah,10
int 21h                             ; $ # M A D A M $
                                    ; 0 1 2 3 4 5 6 7
findlastind:
    cmp str[si],'$'                 ;     si->          initial
    je lastind                      ;               si condition true. Now di=si=7
    inc si                                                        ; but 7 is not last index of string
    jmp findlastind
    
lastind:
    mov di,si                       ; set si=1
    mov si,1
    jmp checkpalindrome
    
checkpalindrome:                    ; so  dec di, now di points last index
    dec di                          ; inc si, si points to initail position
    inc si                          ; M A D A M
    cmp si,di                       ; 2 3 4 5 6    compare characters at si,di if not equal then its not a palindrome
    jge palindrome                  ;si       di   in case of odd length str
    mov ah,str[si]                  ;  si   di     if all from fst n lst chars are same
    mov bh,str[di]                  ;     si       then mid char can be anything and need not to check
    cmp ah,bh                       ;     di       it will be palindrome. so when si=di n all chars at si = chars at di
    ;je traverse 
    je checkpalindrome                    ;                                         it's palindrome
    jne notpalindrome
                                    ; N O O N   even len str
;traverse:                           ; 2 3 4 5
;    inc si                          ;si     di
;    dec di                          ;  si di
;    jmp checkpalindrome             ;  di si    here si>di and all si chars=di chars. so palindrome.
                                    ;           In both cases any char at si <> char at di, it cant be a palindrome string
palindrome:
    printn
    lea dx,str+2
    mov ah,09
    int 21h
    print ' Is Palindrome'
    hlt 

notpalindrome:
    printn 
    lea dx,str+2
    mov ah,09
    int 21h
    print ' Not Palindrome'
    hlt
    
ret
    str db 30 dup<'$'>
    define_print_num
    define_print_num_uns        