#Program 3
.data
list1: .word 1,2,3,4,5,6,7,8,9,10
list2: .word 1,2,3,4,5,6,7,8,9,10
count: .word 10
spaces: .asciiz " "
string1: .asciiz "Input: "
string2: .asciiz "\nOutput: "
.text

#to print input label
li $v0, 4
la $a0, string1
syscall


la $s1, list1 #pointer to list1
lw  $s0, 0($s1) #accessing items from array

lw $t0, count #store count in t0
li $t1, 0 #i=0

#start the loop
loop1:
bge $t1, $t0, exit1
lw $s0, 0($s1) #read data from memory (list1)

#print integers
li $v0, 1 # to print int
move $a0, $s0
syscall

#print string
li $v0, 4 
la $a0, spaces
syscall

#adder
addi $t1,$t1,1 #increment i
addi $s1, $s1, 4 #increment address

j loop1

#end first loop
exit1:


# print output label
li, $v0, 4
la $a0, string2
syscall

la $s1, list2 #pointer to list2
lw  $s0, 0($s1) #accessing items from array

lw $t0, count #store count in t0
li $t1, 0 #i=0

#start the loop
loop2:
bge $t1, $t0, exit2
lw $s0, 0($s1) #read data from memory (list1)

# Square the values
mul $s0, $s0, $s0

#adders
addi $t1,$t1,1 #increment i
addi $s1, $s1, 4 #increment address


#print integer value
li $v0, 1 
move $a0, $s0
syscall

#to print string
li $v0, 4 
la $a0, spaces
syscall

# end second loop
j loop2

# to end program
exit2:
li $v0, 10
syscall
