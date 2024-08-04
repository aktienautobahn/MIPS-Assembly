	#+ BITTE NICHT MODIFIZIEREN: Vorgabeabschnitt
	#+ ------------------------------------------

.data

str_address: .asciiz "address: "
str_rueckgabewert: .asciiz "\nRueckgabewert: "
buf_out: .space 256

.text

.eqv SYS_PUTSTR 4
.eqv SYS_PUTCHAR 11
.eqv SYS_PUTINT 1
.eqv SYS_EXIT 10

main:
	# Eingabe address wird ausgegeben:
	li $v0, SYS_PUTSTR
	la $a0, str_address
	syscall

	li $v0, SYS_PUTSTR
	la $a0, test_address
	syscall
	
	li $v0, SYS_PUTSTR
	la $a0, str_rueckgabewert
	syscall

	move $v0, $zero
	# Aufruf der Funktion plz:
	la $a0, test_address
	jal plz
	
	# Rueckgabewert wird ausgegeben:
	move $a0, $v0
	li $v0, SYS_PUTINT
	syscall

	# Ende der Programmausfuehrung:
	li $v0, SYS_EXIT
	syscall

	#+ BITTE VERVOLLSTAENDIGEN: Persoenliche Angaben zur Hausaufgabe 
	#+ -------------------------------------------------------------

	# Vorname: Emil
	# Nachname: Skorov
	# Matrikelnummer: 0343759
	
	#+ Loesungsabschnitt
	#+ -----------------

.data

test_address: .asciiz "TU Berlin, 10623 Berlin"

.text
# -------------------- FUNCTIONS -------------------- #

# Function: plz 
# Purpose: function gets a string and should parse for a sequence of number, with amount of 5, known as plz 
# Outputs 5 coherent "digits" or 0 if no 5 coherent found

plz:
    # Save $ra  and $s registers on the stack    
    addi $sp, $sp, -20  # allocate frame of 20 bytes on the stack for $ra and other temp saved variables
    sw $ra, 16($sp)     # stores $ra on the stack
    sw $s0, 12($sp)
    sw $s1, 8($sp)
    sw $s2, 4($sp)
    sw $s3, 0($sp)

    move $s1, $a0       # Load the argument's value of input string into $s1 register

    li $s0, 0           # initialize output value register  
    li $s2, 0			# initialize counter that keeps track of the output value size

	

forLoop:	# looping through the passed string
	bgt $s2, 4, endLoop # check if 5 characters (=numbers) have already been stored -> end the loop

    # take one character of the string
	lb $s3, 0($s1)      # Load a character (from current position, stored in $s1) of the string into $s2

	beq $s3, $zero, endLoop # Check if the char eqauals zero: check for the null terminator of the test_string 
	addi $s1, $s1, 1 # increment current (pointer) position inside the test_address

	#prepare argument for isDigit (passing character as argument)
	move $a0, $s3

	jal isDigit 	# call on fuction that validates that the data represents a numerical value (30-30 in HEX) (beq number)

	beq $v0, $zero, resetOutput  # if isDigit returns 0 , the character is not digit, resets the outputs , later proceeds with the string (next char)

    # prepare arguments for charToIntCasting function
    move $a0, $s3
    move $a1, $s2

    jal charToIntCasting # procedure call for casting char to int (based on it's position)

    add $s0, $s0, $v0    # adds returned value of charToIntCasting to overall (output) result

	addi $s2, $s2, 1 # increment counter for the output value size

	j forLoop

resetOutput: # resets all the output values, if condition met (less than 5 coherent digits, and the next char is letter)
    li $s2, 0 # reset output value size counter
    li $s0, 0 # reset output value
    j forLoop

endLoop: # conditions met: either null terminator or 5 coherent digits in output value
    move $v0, $s0  # Load the result (output value) into $v0

    # Restore $ra and $s from the stack
    lw $s3, 0($sp)
    lw $s2, 4($sp)
    lw $s1, 8($sp)
    lw $s0, 12($sp)
    lw $ra, 16($sp)    
    addi $sp, $sp, 20   # Pop off the frame

	jr $ra

isDigit:            # leaf function for defining if char is digit or not (returns 1 for digit, 0 for not digit)

	move $t0, $a0   # load argument to a temp register
    li $t1, 0x39 # ASCII '9' in hex
    li $t2, 0x30 # ASCII '0' in hex

    li $v0, 0       # Assumes character is not a digit, initializes with 0

    bgt $t0, $t1, digitReturn # if $s1 is greater than ASCII '9' -> not digit
	blt $t0, $t2, digitReturn # if $s1 is less than ASCII '0'    -> not digit

	li $v0, 1 # Character is a digit if both conditions are not met, sets return value to 1

digitReturn:
	jr $ra

charToIntCasting:   # leaf function for casting a digit based on it's position to integer

    move $t1, $a0     # assigns argument value for input char to temp register for casting char to int
    move $t2, $a1     # assigns argument value for input char's position to temp register

    # initialization of temp registers
	li $t3, 0			# register for  temporary converting (helper register)
    li $t4, 0			# for storing multiplication times amount = max loop times
    li $t5, 4			# for storing 4
    li $t6, 0		    # initializes control variable (counter) for the multiplicationLoop

	addi $t1, $t1, -48   # converts ASCII value to dec value

    sub $t4, $t5, $t2  # calculates amount of times to multiply substructs index from 4 to calculate times to multiply
	
multiplyByPowerOfTenLoop: # loop that multiplies digit with power of 10
    blt $t4, $zero, endMultiplyByPowerOfTenLoop     # Check if multiplication times amount is less than 0 -> exit loop
    bge $t6, $t4, endMultiplyByPowerOfTenLoop       # If counter equals max loop times (=nessessary multiplication times is reached) -> exit loop

    addi $t6, $t6, 1      # Increments loop counter
    # multiplication with 10 equals multiplication with 8 and double addition
    sll $t3, $t1, 3       # shifts bits by power of 3 (equals multiplication with 8)
    add $t3, $t3, $t1     # adds itself
	add $t3, $t3, $t1     # adds itself

	move $t1, $t3         # stores the helper register value into the $t1

    j multiplyByPowerOfTenLoop                 # Jump back to start of loop

endMultiplyByPowerOfTenLoop:

    move $v0, $t1        # writes the result into the return value register

    jr $ra



