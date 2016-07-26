.data

msgFirstPrompt: .asciiz "Inserisci la prima stringa: "
msgSecondPrompt: .asciiz "Inserisci la seconda stringa: "
msgNewLine: .asciiz "\n"
errorInvalidString: .asciiz "La stringa inserita è nulla oppure contiene caratteri diversi da quelli >= 'a' e <= 'f'.\nIl programma terminerà"
errorDifferentLength: .asciiz "Le due stringhe hanno lunghezza diversa, sta cosa non mi piace e quindi termino\nByee"
msgOkStrings: .asciiz "Le due stringhe sono lunghe uguali, procedo al confronto.\n"
msgDone: .asciiz "Elaborazione completata! Ecco le due stringhe:\n"

firstString: .space 10
secondString: .space 10

.globl main

.text
main:
	la $a0, msgFirstPrompt
	la $a1, firstString
	la $a2, 10
	jal readStringWithPrompt
		
	la $a0, firstString
	jal checkString
	move $s0, $v0
	
	la $a0, msgSecondPrompt
	la $a1, secondString
	la $a2, 10
	jal readStringWithPrompt
	
	la $a0, secondString
	jal checkString
	move $s1, $v0
	
	bne $s0, $s1, notSameLength
	
	la $a0, msgOkStrings
	jal printString
	
	#core starts here
	la $t0, firstString
	la $t1, secondString
	
	la $t7, 0
	
	theLoop:
		#if secondString[i] == firstString[i]+1 --> firstString[i].toUpperCase()
		lb $t2, 0($t0) #i-char of firstString
		lb $t3, 0($t1) #i-char of secondString
		addi $t2, $t2, 1 #next char of 1st  
		
		bne $t2, $t3, nextPlease
			#if we are here they are predecessor and successor	
			subi $t2, $t2, 1 #restore char
			subi $t2, $t2, 32 #make upper case (ascii table)
			sb $t2, 0($t0) #save upper cased letter
			
		nextPlease:
			addi $t0, $t0, 1 
			addi $t1, $t1, 1
			addi $t7, $t7, 1
			
			blt $t7, $s0, theLoop #remember, in $s0 we have the length of the string
	
	#print changed strings
	la $a0, msgDone
 	jal printString
 	
 	la $a0, firstString
 	jal printString
 			
 	la $a0, secondString
 	jal printString
 	
	##all done, exit gracefully!
	li $a0, 0
	jal exit

								
notSameLength:
	la $a0, errorDifferentLength
	jal printString
	li $a0, 2
	jal exit
	
#€xit the program with exit code in $a0
exit:
	li $v0, 17
	move $a0, $a0
	syscall
	
	
#a0: address to string to check
# checks if all chars in string are between 'a' and 'f'
# in v0 you will find the string length (excluding \n)
# the program will terminate if string is invalid, might be better to let the main terminate but who cares
checkString: 
	li $v0, 0
	checkNext:
		lb $t0, 0($a0) 	#t0 holds current char
		beq $t0, '\n', valid
		blt $t0, 'a', invalid
		bgt $t0, 'f', invalid
		addi $v0, $v0, 1
		addi $a0, $a0, 1
		j checkNext
	
	valid:
		beq $v0, 0, invalid #if it's an empty string, it's invalid
		jr $ra		
	invalid:
		la $a0, errorInvalidString
		jal printString
		li $a0, 1
		jal exit
		
#a0: prompt address
#a1: string destination
#a2: max length
readStringWithPrompt:
	addi $sp, $sp,-4
	sw $ra, 0($sp) 
	
	move $a0, $a0
	jal printString
	
	move $a0, $a1
	move $a1, $a2
	jal readString
	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

#a0: address of the string to print
printString:
	li $v0, 4
	syscall
	jr $ra

#a0: string destination
#a1: max length
readString:
	li $v0,8 #take in input
    move $a0, $a0
    move $a1, $a1 # allot the byte space for string
    syscall
    jr $ra