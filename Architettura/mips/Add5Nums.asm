# add 5 numbers
# 

.data ## Data declaration section

values: .word 111, 4, 5, 10, 12, 5, 12, 433, 0

result: .word 0 

.text
.globl main

main:
	move $t1, $zero
	move $a0, $zero  #sum
	
	la $s1, values #load into $s1 the label address
	
loop:	
	lw $a1, 0($s1)
    
    beq $a1, 0, exit #if zero exit
    
    add $a0, $a0, $a1   
    addi $s1, $s1, 4
    addi $t1, $t1, 1
    
    j loop
    
exit: 
	la $s1, result
	sw $a0, 0($s1)

li $v0, 10 # terminate program
syscall