.data
        str0: .asciiz "Input is too long." #Displays if error occurs - long input string
	str1: .asciiz "Input is empty." #Displays if error occurs - empty input
        str2: .asciiz "Invalid base-34 number." #Displays if error occurs - invalid input
	str3: .space 600 #Sets aside space for input of 600 bits or 150 words

.text
str0Error: #For long input
  la $a0, str0 #System call for a long input
  li $v0, 4 #Address of string that gets printed
  syscall
  j exit  #Jumps to exit of program
  
str1Error: #For empty input   
  la $a0, emptyInput #System call for an empty input
  li $v0, 4 #Address of string that gets printed
  syscall
  j exit #Jumps to exit of program
  
str3Error: #For invalid input
  la $a0, str3 #System call for an invalid input
  li $v0, 4 #Address of string that gets printed
  syscall
  j exit #Jumps to exit of program
main:
  li $v0, 8 
  la $a0, str3 
  li $a1, 300
  syscall
