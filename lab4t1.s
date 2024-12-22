.data
equal : .string"equal\n"
not_equal : .string"not equal\n"

.text

li x2,10
li x3,10

bne x2,x3, not_equal1 
    la ,a1, equal
    j exit
not_equal1:
    la a1,not_equal
exit:
    li a0 , 4
    ecall
    
    