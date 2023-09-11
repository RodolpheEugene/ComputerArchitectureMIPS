# Program 1
li $s1, 8    # Store 1 in register s1
li $s2, 2    # Store 2 in register s2
li $s3, 4   # Store 3 in register s3


bgt $s1, $s2, checkCondition1 # Check if s1>s2
bgt $s2, $s3, checkCondition2 # check if s2>s3
move $s0, $s3
j done

checkCondition2: # check if s2>s3
move $s0, $s2 # move s2 to register s0
j done

checkCondition1:
bgt $s1, $s3, nextCondition3 # check if s1>s3
move $s0, $s3	# move s3 to register s0
j done

nextCondition3:
move $s0, $s1 # move s1 to register s0

done:

