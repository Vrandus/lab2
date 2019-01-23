	.globl fini
	.text
main:	#-----------------------------

		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t0, $0, $v0 # t0 = v0

		
		sll $t1, $t0, 4  #Logical Left Shift (<<)
		sll $t2, $t0, 1
		
		add $t3, $t1, $t2
		
		addi $v0, $0, 1
		add $a0, $0, $t3
		syscall

		
		#-----------------------------
fini:	

