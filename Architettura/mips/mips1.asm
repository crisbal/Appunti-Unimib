
.data ## Data declaration section

out_string: .asciiz "\nCIAO!\n"

.text ## Assembly language instructions go in text segment
main: ## Start of code section
li $v0, 4 # system call code for printing string = 4
la $a0, out_string # load address of string to be printed into $a0
syscall # call operating system to perform operation
# specified in $v0
# syscall takes its arguments from $a0, $a1, ...

li $t0, 0
li $t1, 1
li $t2, 0
li $a0, 2

fibonacci:
	add $t2, $t1, $t0 #t2 holds sum of the past two numbers
	
	move $t0, $t1
	move $t1, $t2
	  
	addi $a0, $a0, 1
	bne $a0, 30, fibonacci 
		

li $v0, 10 # terminate program
syscall
