# Program 2
.data
string: .asciiz "\nEnter the number of your choice\n"
string1: .asciiz "\n"
string2: .asciiz "\nThe sum is: "
.text

# print string
li $v0, 4
la $a0, string
syscall

# get input from user
li $v0, 5
syscall
move $s0, $v0

# counter = 0
li $s1, 0
li $s2, 0

# loop 
loop:
bge $s1, $s0, end
addi $s1, $s1, 1
add $s2, $s2, $s1
j loop


end:
# print the sum
li $v0, 4
la $a0, string2
syscall

li $v0, 1
move $a0, $s2
syscall


#exit
li $v0, 10
syscall
