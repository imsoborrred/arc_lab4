.data 
    arr: .space 400

.text 
    li t0, 0
    la t1, arr
    li t2, 100
loop: 
    bge t0,t2,end
    sw t0, 0(t1)
    addi t1,t1,4
    addi t0,t0,1
    j loop
    
    
end:
    
    li a0, 1
    ecall