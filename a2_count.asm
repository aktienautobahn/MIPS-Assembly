	#+ BITTE NICHT MODIFIZIEREN: Vorgabeabschnitt
	#+ ------------------------------------------

.data

str_text: .asciiz "text: "
str_part: .asciiz "\npart: "
str_rueckgabewert: .asciiz "\nRueckgabewert: "

rh_table:
	.word 0x76543210, 0x76543210, 0x62174305, 0x47032651, 0x06425137, 0x06351427, 0x54613072, 0x15763042
	.word 0x02176345, 0x43012657, 0x63045127, 0x07346125, 0x71432065, 0x71054362, 0x40126735, 0x23071456
	.word 0x20534671, 0x12534706, 0x35201647, 0x02617534, 0x43706251, 0x53176204, 0x03156274, 0x13406257
	.word 0x21375640, 0x42315760, 0x42153607, 0x02473651, 0x61435702, 0x27354061, 0x05234716, 0x20634517
	.word 0x03146725, 0x23046157, 0x75431062, 0x71654032, 0x04715263, 0x51360247, 0x21567043, 0x34510762
	.word 0x26105743, 0x26310754, 0x40532176, 0x10574326, 0x56420731, 0x26751403, 0x46321057, 0x06175432
	.word 0x10273645, 0x42013576, 0x40235761, 0x21374506, 0x61257430, 0x37421560, 0x12704356, 0x50132674
	.word 0x63215704, 0x27306541, 0x16302547, 0x06215374, 0x53742106, 0x50746321, 0x51670342, 0x45712063
	.word 0x23471065, 0x41056732, 0x61042357, 0x07142365, 0x37615204, 0x65307241, 0x01564327, 0x04532167
	.word 0x43751602, 0x52476031, 0x02537641, 0x32514607, 0x21506743, 0x23510764, 0x21046537, 0x03241765
	.word 0x42516307, 0x03572641, 0x61723405, 0x57023461, 0x13450267, 0x01456273, 0x46012357, 0x06172345
	.word 0x73601452, 0x75126034, 0x01726345, 0x53012467, 0x26175034, 0x46301752, 0x37214560, 0x61237540
	.word 0x02763145, 0x54013627, 0x42075316, 0x40372615, 0x63150742, 0x27416053, 0x37204516, 0x60237514
	.word 0x50324761, 0x21735406, 0x62037451, 0x37124605, 0x43256170, 0x13476520, 0x07142365, 0x61042357
	.word 0x10632457, 0x05124376, 0x21635740, 0x25314760, 0x63241075, 0x17046532, 0x13526704, 0x23506471
	.word 0x41025673, 0x12370465, 0x40627135, 0x35071426, 0x43671205, 0x45076231, 0x57623104, 0x65703421
	.word 0x70415632, 0x72351046, 0x36124057, 0x06137452, 0x30624715, 0x25037416, 0x15037426, 0x30624175
	.word 0x20531764, 0x21504736, 0x57230614, 0x62704513, 0x34756012, 0x53467012, 0x27604513, 0x65230714
	.word 0x67502431, 0x67521304, 0x20576143, 0x43510726, 0x30642751, 0x25147306, 0x10276345, 0x43012576
	.word 0x12703564, 0x51203674, 0x46035127, 0x06374125, 0x06275341, 0x46312507, 0x56371042, 0x46715032
	.word 0x21537064, 0x31504762, 0x57031642, 0x62714035, 0x26014537, 0x06231745, 0x15426307, 0x03652471
	.word 0x02167435, 0x34021657, 0x17302465, 0x61025374, 0x16472305, 0x46052371, 0x12730456, 0x50124673
	.word 0x27613045, 0x65013742, 0x34756120, 0x53467120, 0x17245063, 0x61340572, 0x34052761, 0x21467305
	.word 0x64152073, 0x17460352, 0x56471302, 0x46752031, 0x35140627, 0x02647153, 0x25430176, 0x10654723
	.word 0x47320615, 0x62075413, 0x10623574, 0x15203476, 0x67412530, 0x67251340, 0x04327651, 0x32165407
	.word 0x15246307, 0x03642571, 0x62057134, 0x37401625, 0x36720451, 0x56127403, 0x61402573, 0x17250364
	.word 0x34756201, 0x53467201, 0x21357460, 0x31425760, 0x56130724, 0x26704153, 0x46302571, 0x16275304
	.word 0x34170526, 0x40267153, 0x50671324, 0x45702136, 0x60274513, 0x47230516, 0x04217653, 0x32160547
	.word 0x02163754, 0x24103657, 0x45206137, 0x03671524, 0x70162534, 0x74201356, 0x32467150, 0x34157620
	.word 0x13624570, 0x15236470, 0x57614302, 0x65732041, 0x23561704, 0x24506731, 0x24753601, 0x52463701
	.word 0x42163705, 0x24073651, 0x23501746, 0x20516734, 0x36420571, 0x16257403, 0x64517032, 0x37561042
	.word 0x54236071, 0x13764502, 0x06271543, 0x46210537, 0x73250461, 0x71426503, 0x12365740, 0x24315670

.text

.eqv SYS_PUTSTR 4
.eqv SYS_PUTCHAR 11
.eqv SYS_PUTINT 1
.eqv SYS_EXIT 10

main:
	# Eingabeparameter text und part werden ausgegeben:
	li $v0, SYS_PUTSTR
	la $a0, str_text
	syscall

	li $v0, SYS_PUTSTR
	la $a0, test_text
	syscall
	
	li $v0, SYS_PUTSTR
	la $a0, str_part
	syscall

	li $v0, SYS_PUTSTR
	la $a0, test_part
	syscall
	
	li $v0, SYS_PUTSTR
	la $a0, str_rueckgabewert
	syscall

	move $v0, $zero
	# Aufruf der Funktion count:
	la $a0, test_text
	la $a1, test_part
	jal count
	
	# Rueckgabewert wird ausgegeben:
	move $a0, $v0
	li $v0, SYS_PUTINT
	syscall

	# Ende der Programmausfuehrung:
	li $v0, SYS_EXIT
	syscall

	# Hilfsfunktion: int rollhash(int hash, char in, char out);
rollhash:
	la $t0, rh_table
	andi $a1, $a1, 0x7f
	sll $t2, $a1, 3
	add $t2, $t2, $t0
	lw $t2, 0($t2) # $t2: b = rh_table[2*in + 0]
	andi $a2, $a2, 0x7f
	sll $t4, $a2, 3
	add $t4, $t4, $t0
	lw $t4, 4($t4) # $t4: rh_table[2*out + 1]

	ori $t3, $a0, 8 # $t3: a = hash | 8. The 8 is a stop marker for _rollhash_perm_loop.
	# For first iteration: permutate a=hash with b=rh_table[2*in + 0)
_rollhash_loop:
	move $v0, $zero # $v0: result of permutation
_rollhash_perm_loop:
	sll $v0, $v0, 4 # result <<= 4
	srl $t1, $t3, 26 
	andi $t1, $t1, 28 #  # $t1: d = (current digit of a) << 2
	srlv $t1, $t2, $t1 # 
	andi $t1, $t1, 7 # $t1: d'th digit of b 
	or $v0, $v0, $t1 # append d'th digit of b to result $v0
	sll $t3, $t3, 4 # a <<= 4
	bne $t3, $zero, _rollhash_perm_loop
	
	beq $t4, $zero, _rollhash_end # End after second iteration.

	ori $t3, $t4, 8 # For second iteration: permutate a=rh_table[2*out + 1]...
	move $t2, $v0 # ...with b=result 
	move $t4, $zero
	j _rollhash_loop
_rollhash_end:
	jr $ra

	#+ BITTE VERVOLLSTAENDIGEN: Persoenliche Angaben zur Hausaufgabe 
	#+ -------------------------------------------------------------

	# Vorname: Emil
	# Nachname: Skorov
	# Matrikelnummer: 0343759
	
	#+ Loesungsabschnitt
	#+ -----------------

.data

test_text: .asciiz "AxyzTESTxyz1xyxyzxyz1xyz1xyz1xyzHALLOxyz1xyzxyzxyz"
test_part: .asciiz "xyz"

.text


count:

    addi $sp, $sp, -32  # Allocate space for $ra and other registers
    sw $ra, 28($sp)     # Save $ra at an offset considering other registers
	sw $s0, 24($sp)		# save $s0 register on stack
	sw $s1, 20($sp)		# save $s1 register on stack
	sw $s2, 16($sp)		# save $s2 register on stack
	sw $s3, 12($sp)		# save $s3 register on stack
	sw $s4, 8($sp)		# save $s4 register on stack
	sw $s5, 4($sp)		# save $s5 register on stack
	sw $s6, 0($sp)		# save $s6 register on stack

# initializePhase:
    move $s0, $a1 # copy address of test_part in $a1 into $s0 
    move $s1, $a0 # copy address of test_text in $a0 into $s1

	# initialize variables hashed_part and hashed_text with 0x76543210 (empty)
	li $s2, 0x76543210 # hashed_part initialization with empty hash
	li $s3, 0x76543210 # hashed_text initialization with empty hash
	# initialize other variables
	li $s4, 0 		  # counter count
	li $s5, 0		  # length of the part (n)
	li $s6, 0		  # pointer iterator for the Text

# iterate through the part and hash the part while counting the "n" (lenght of the part)
initializePartLoop:
	lb $a1, 0($s0)                         # Load byte from test_part into $a1 argument
	li $a2, 0							   # char out argument sets to 0
    beq $a1, $zero, initializePartLoopEnd  # If null terminator reached, end loop
    addi $s0, $s0, 1                       # Move pointer to the next byte
	addi $s5, $s5, 1					   # increment n

	move $a0, $s2						  # prepares $a0 (hashed_part) for function call
	jal rollhash 						  # calls rolls function
	move $s2, $v0						  # sets returned value to hashed_text $s2
	
    j initializePartLoop                   # Jump back to the start of the loop

# store the result of the hashed part as well as the n-length text (both are kinda contants)
initializePartLoopEnd:


# iterate through the text and hash "n" charaters of the text (loop n-times invoking rollhash)
initializeTextLoop:
	lb $a1, 0($s1)                         # Load byte from test_text into $a0
	li $a2, 0							   # char out is 0
    beq $a1, $zero, initializeTextLoopEnd  # loop termination condition: If null terminator reached, end loop
	bge $s6, $s5, initializeTextLoopEnd    # loop termination condition: If n times reached 
	addi $s1, $s1, 1					   # Move pointer to the next byte
	addi $s6, $s6, 1					   # increment text iterator

	move $a0, $s3						  # prepares $a0 (hashed_text) for function call
	jal rollhash 						  # calls rolls function
	move $s3, $v0						  # sets returned value to hashed_text $s3

	j initializeTextLoop

initializeTextLoopEnd: 	# stores the result of the hashed n-length text, deallocates stack space and returns to count function

# searchPhase:

	# initial comparing in search Phase
	bne $s2, $s3, searchLoop # if the initial hash values are not equal, jump straight to the searchLoop, without initial incrementing
	addi $s4, $s4, 1         # Increment count for initial comparison

searchLoop: # iterate through the text, by adding next one character one by one, and removing previous (ofsetted) one by one.

	lb $a1, 0($s1)  					   # proceed with the $s1 (finished at n-shift pointer address)

	# check if there is null terminator reached: finish the searchPhase and return count to the main function
    beq $a1, $zero, searchLoopEnd  # If null terminator reached, end loop

	# load char to pop after calculating it's position
	sub $t9, $s1, $s6					   # pointer arithmetic: substruct from current text pointer the length 
	lb $a2, 0($t9) 						   # loads byte from the address

	move $a0, $s3						   # pass $s3 as agrument into $a0
	jal rollhash 						   # invoke rolling hash function
	move $s3, $v0   					   # pass returned value to $s3 (hashed_text)
	
	addi $s1, $s1, 1				# increment the pointer in text
	
	# compare the output of the rolling hash function with the hashed_part
	beq $s2, $s3, countIncrementInsideLoop # if the hash values are equal, increment count

	j searchLoop 						   # Jump back to the loop

countIncrementInsideLoop: 				# label to increment count

	addi $s4, $s4, 1                       # Increment count for each iteration
	j searchLoop 						   # Jump back to the loop

searchLoopEnd:

    move $v0, $s4  # Load the result from s4 (counter) into $v0 for returning it to main	

    # Restore $ra from the stack before returning
	lw $s6, 0($sp)		# restore $s6 register from stack
	lw $s5, 4($sp)		# restore $s5 register from stack
	lw $s4, 8($sp)		# restore $s4 register from stack
	lw $s3, 12($sp)		# restore $s3 register from stack
	lw $s2, 16($sp)		# restore $s2 register from stack
	lw $s1, 20($sp)		# restore $s1 register from stack
	lw $s0, 24($sp)		# restore $s0 register from stack
    lw $ra, 28($sp)     # Restore $ra
    addi $sp, $sp, 32   # Deallocate space

	jr $ra


	
