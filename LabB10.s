	.globl fini
	.text
main:	#-----------------------------
		addi $t0, $0, 60
		addi $t1, $0, 7
		div $t0, $t1
		mflo $t3
		mfhi $t4
		
		#-----------------------------
fini:	addi $v0, $0, 1
		add $a0, $0, $t3
		syscall
		addi $v0, $0, 11
		add $a0, $0, ' '
		syscall
		addi $v0, $0, 1
		add $a0, $0, $t4
		syscall
		
		mult $t1, $t0 #64 bit product, most significant in mfhi, least sig in mflo
		mflo $t5 #contains the outcome of (t1 x t0) #60 x 7 = 420
		mfhi $t6 #contains 0

		addi $v0, $0, 1
		add $a0, $0, $t5
		syscall
		addi $v0, $0, 11
		add $a0, $0, ' '
		syscall
		addi $v0, $0, 1
		add $a0, $0, $t6
		syscall
