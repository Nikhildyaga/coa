include 'emu8086.inc' 
PRINT 'ENTER NUMBER'
call scan_num
MOV AX,CX 
call scan_num
MOV BX,CX
ADD AX,BX
;SUB AX,BX
call print_num
ret 
    define_scan_num
    define_print_num_uns 
    define_print_num