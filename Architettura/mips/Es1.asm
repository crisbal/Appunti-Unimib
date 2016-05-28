# sum se a>0
# multiply a<0
# bitwise and b&c a==0
# 

.data ## Data declaration section

values: .word 0,111,4 #a,b,c

result: .word 0 

.text
.globl main

main:
    la $s1, values #load into $s1 the label address
    
    lw $t0, 0($s1) #load into $t0 0+s1
    lw $t1, 4($s1) #load into $t1 4+s1 (next word) 
    lw $t2, 8($s1) #load into $t1 8+s1 (next next word)
    
	blt $t0, 0, t0lesszero #branch-less-than t0<0: go to lessthan0                     
	beq $t0, 0, t0iszero 
	
	#if i'm here $t0 is >=0
	#sum numbers:
		add $s0, $t0, $t1
		add $s0, $s0, $t2
		j exit
		
	t0lesszero:
		#multiply numbers
		mul $s0, $t0, $t1
		mul $s0, $s0, $t2
		j exit
		
	t0iszero:
		and $s0, $t1, $t2
		j exit #just for fun	
		
exit: 
	la $s1, result
	sw $s0, 0($s1)

li $v0, 10 # terminate program
syscall