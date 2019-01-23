	.globl fini
	.text
main:	#-----------------------------

		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t0, $0, $v0 # t0 = v0

		
		sll $t2, $t0, 21  #Logical Left Shift (<<)
		srl $t3, $t2, 31
		
		addi $v0, $0, 1
		add $a0, $0, $t3
		syscall
		addi $v0, $0, 11
		add $a0, $0, ' '
		syscall
		
		#-----------------------------
fini:	

