;ARRAY READ AND PRINT EVERY THIRD ELEMENT &  Their sum
include 'emu8086.inc'
print 'Enter Size:  '
call scan_num
mov n,cx
mov bx,3
mov ax,n
div bx
mov parts,ax   ; here parts-> we need to print every third element
mov bx,n       ; so divide by 3 to know how many such parts we can divide array of third element
mov si,0       ; ex size 10 10/3 = 3 i,e 3 6 9 places we need to print
mov bp,0       ; here parts is to know when to stop printing
mov ind,4      ; here ind=4 bcz we stored arr from 0 next 2 next 4.Third pos at 4,next increment by 6
printn
print 'Enter elements  '      ;   1   2   3   4   5   6   7   8   9   10  11  12     POSITIONS
jmp read                      ; +---+---+---+---+---+---+---+---+---+---+---+---+
                              ; |   |   | P1|   |   |P2 |   |   |P3 |   |   |P4 |    PARTS
read:                         ; +---+---+---+---+---+---+---+---+---+---+---+---+
  printn                      ;   0   2   4   6   8   10  12  14  16  18  20  22     INDICES
  call scan_num               
  mov arr[si],cx
  add si,2
  dec n
  cmp n,0
  je print
  jne read

print:
    printn
    print 'Elements in array at every third position '
    jmp printthird

printthird:
    mov bp,ind
    mov ax,arr[bp]
    add sum,ax 
    call print_num
    print ' '
    add ind,6
    inc n
    mov cx,parts
    cmp n,cx
    je printsum
    jne printthird
    
printsum:
    printn
    print 'Sum of elements at every third positon  '
    mov ax,sum
    call print_num
    jmp stop
    
stop:
ret
    s dw 0
    n dw 0
    ind dw 0 
    parts dw 0
    sum dw 0
    arr dw n dup(?) 
    define_print_num_uns
    define_print_num
    define_scan_num