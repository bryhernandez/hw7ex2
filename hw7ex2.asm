
.data   				# GLOBAL VARIABLES go in the data segment 
	prompt1: .asciiz "Enter first name: "
	userInput1: .space 32
	prompt2: .ascii "Enter last name: "
	userInput2: .space 32
	prompt3: .asciiz "Enter DOB month number: "
	prompt4: .asciiz "Enter DOB day number: "
	prompt5: .asciiz "Enter DOB year number: " 
	
	message1: .asciiz "\nFirst name: "
	message2: .asciiz "Last name: "
	message3: .asciiz "Date of Birth: "
	
	char: .asciiz "/"

	

.text   				# All instructions go in the text segment 



# ***Begin the Main Program*** 

main:   

	# Collect the user’s first name 
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 8
	la $a0, userInput1
	li $a1, 32
	syscall
	
   
	# Collect the user’s last name
	li $v0, 4
	la $a0, prompt2
	syscall
	
	li $v0, 8
	la $a0, userInput2
	li $a1, 32
	syscall

    	# Collect the month number of the user’s birthday
	li $v0, 4
	la $a0, prompt3
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0

    	# Collect the day number of the user’s birthday
	li $v0, 4
	la $a0, prompt4
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0

    	# Collect the year number of the user’s birthday
	li $v0, 4
	la $a0, prompt5
	syscall
	
	li $v0, 5
	syscall
	
	move $t2, $v0

    	# Print out the user’s first name
	li $v0, 4
	la $a0, message1
	syscall
	
	li $v0, 4
	la $a0, userInput1
	syscall

    	# Print out the user’s last name
	li $v0, 4
	la $a0, message2
	syscall
	
	li $v0, 4
	la $a0, userInput2
	syscall

    	# Print out the user’s birthday
	li $v0, 4
	la $a0, message3
	
	syscall
	#month
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, char
	syscall
	
	#day
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 4
	la $a0, char
	syscall
	
	#year
	li $v0, 1
	move $a0, $t2
	syscall
	
	

 
# ** terminate program **  
li $v0, 10     
syscall 
# ***End the Main Program*** 
