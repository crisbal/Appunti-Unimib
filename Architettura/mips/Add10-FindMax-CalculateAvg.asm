#sum of 10 numbers, find max and avg
# $a0 = sum of n numbers
# $a1 = max
# $a2 = avg

.data

array: .word 1,2,3,4,5,6,7,8,9,10

.text
.globl main

main:

la $t7, array #$t7 keeps the label of "array" 

move $a0, $0 #$a0 keeps the sum 
lb $a1, 0($t7) #$a1 keeps the max (set it to the first number of the array)

move $t0, $0 #here we keep the number of loops / array offset //for(i=0
	
jump:	
	lb $t1, 0($t7)  #load in $t1 the current value pointed by $t7 
	
	add $a0, $a0, $t1 # calcualte sum
	
	ble $t1, $a1, _noMax #is current value less or eq than max? if so goto noMAx

	setMax: #if we are here we have a max, label added for clarification
		move $a1, $t1 #set $a1 equal to $t1: $a1 holds the max
	
_noMax: 		
	addi $t0, $t0, 1 #increment number of checked values
	addi $t7, $t7, 4 #increment pointer  //i++
	
	blt $t0, 10, jump #if we have not checked 10 values jump up //i<len(array) 

div $a2, $a0, $t0 #here we calc the avg and set it into $a2
    