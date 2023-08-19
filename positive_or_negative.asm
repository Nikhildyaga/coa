include 'emu8086.inc'
call scan_num
mov ax,cx
cmp ax,00
jl negative
jg positive
je zero

positive:
    print 'positive'
    ret
negative:
    print 'negative'
    ret
zero:
    print 'zero'
    ret
define_scan_num
define_print_num
define_print_num_uns